// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include <muduo/base/Thread.h>
#include <muduo/base/CurrentThread.h>
#include <muduo/base/Exception.h>
//#include <muduo/base/Logging.h>

#include <boost/static_assert.hpp>
#include <boost/type_traits/is_same.hpp>

#include <errno.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <linux/unistd.h>

namespace muduo
{
    // 缓存当前线程的相关信息，具体在 CurrentThread.h 中
    namespace CurrentThread
    {
        // __thread修饰的变量是线程局部存储的。
        // 只能修饰 POD 类型（与 C 兼容的原始数据类型【结构体，整型...】）
        __thread int t_cachedTid = 0;		// 线程真实pid（tid）的缓存，
                                            // 缓存起来是为了减少::syscall(SYS_gettid)系统调用的次数
                                            // 提高获取tid的效率
        __thread char t_tidString[32];	    // 这是tid的字符串表示形式
        __thread const char* t_threadName = "unknown";


        const bool sameType = boost::is_same<int, pid_t>::value;  // 判断int和pid_t是不是相同类型的
        BOOST_STATIC_ASSERT(sameType); // 编译时断言
    }

    namespace detail
    {
        pid_t gettid()
        {
            return static_cast<pid_t>(::syscall(SYS_gettid));
        }

        // 当主进程创建一个子进程，在子进程的环境中调用
        // fork 可能是在主线程中国调用，也可能是在子线程中调用
        // fork 得到一个新进程，新进程只有一个执行序列，只有一个线程（调用 fork 的线程被继承下来）
        // 实际上，对于编写多线程程序来说，我们最好不要再调用fork
        // 不要编写多线程多进程程序，要么用多进程，要么用多线程
        void afterFork()
        {
            muduo::CurrentThread::t_cachedTid = 0;
            muduo::CurrentThread::t_threadName = "main";
            CurrentThread::tid();
            // no need to call pthread_atfork(NULL, NULL, &afterFork);
        }

        // 线程名字的初始化
        class ThreadNameInitializer
        {
            public:
                ThreadNameInitializer()
                {
                    muduo::CurrentThread::t_threadName = "main";
                    // 获取当前 tid 并缓存到 t_cachedTid 中
                    CurrentThread::tid();
                    /*
                        pthread_atfork(void (*prepare)(void），void (*parent)(void）, void(*child)(void))
                                prepare在父进程fork创建子进程之前调用，这里可以获取父进程定义的所有锁；
                                child fork返回之前在子进程环境中调用，在这里unlock prepare获得的锁；
                                parent fork创建了子进程以后，但在fork返回之前在父进程的进程环境中调用的，在这里对prepare获得的锁进行
                        
                        测试程序在 tests 中
                    */
                    pthread_atfork(NULL, NULL, &afterFork);
                }
        };

        ThreadNameInitializer init; // 相当于一个全局变量
    }
}

//——————————————————————————————————————————————————————————————————————————————

using namespace muduo;

// CurrentThread
void CurrentThread::cacheTid()
{
    if (t_cachedTid == 0)
    {
        t_cachedTid = detail::gettid();
        // 将 tid 格式化，缓存到 t_tidString 里面
        int n = snprintf(t_tidString, sizeof t_tidString, "%5d ", t_cachedTid);
        assert(n == 6); 
        (void) n; // 这里是为了防止编译时因为n变量没有使用而发出警告。
                  // debug版本中，assert会被看到，所以不会发生警告。但是release版本中，assert不会被看到，那么n就会被认为是没有使用。
                 // 实际上我注释了(void)n;也没有发出警告，不知道为什么？     
    }
}

bool CurrentThread::isMainThread()
{
    // 判断当前线程的 tid 是否等于进程的 pid（MainThread），如果相等就说明时主线程
    return tid() == ::getpid();
}

//——————————————————————————————————————————————————————————————————————————————

// Thread   
// 线程的总个数（原子操作）
AtomicInt32 Thread::numCreated_; // Thread.h中还定义了static AtomicInt32 numCreated_;，和这里的有什么关系？这里再写一遍好像优点多此一举了？

Thread::Thread(const ThreadFunc& func, const string& n)
  : started_(false),
    pthreadId_(0),
    tid_(0),
    func_(func),
    name_(n)
{   
    // 创建线程的总个数
    numCreated_.increment(); // 原子性自增操作，为什么是原子性的？答：使用了第二节中提到的原子类
}

Thread::~Thread()
{
  // no join
}

// 启动线程
void Thread::start()
{
    assert(!started_);
    started_ = true;
    // 传递给函数的参数 this 指针
    errno = pthread_create(&pthreadId_, NULL, &startThread, this);
    if (errno != 0)
    {
      //LOG_SYSFATAL << "Failed in pthread_create";
    }
}

int Thread::join()
{
    assert(started_);
    return pthread_join(pthreadId_, NULL);
}

void* Thread::startThread(void* obj) // 声明的时候函数前面写了static，这里就不用写了
{
    Thread* thread = static_cast<Thread*>(obj); 
    thread->runInThread();
    return NULL;
}

void Thread::runInThread()
{
    tid_ = CurrentThread::tid();
    muduo::CurrentThread::t_threadName = name_.c_str();

    try
    {
        func_(); // 本段代码的核心就是调用了func_()，func_是一个私有的函数指针
        muduo::CurrentThread::t_threadName = "finished";
    }
    catch (const Exception& ex)
    {
        muduo::CurrentThread::t_threadName = "crashed";
        fprintf(stderr, "exception caught in Thread %s\n", name_.c_str());
        fprintf(stderr, "reason: %s\n", ex.what());
        fprintf(stderr, "stack trace: %s\n", ex.stackTrace());
        abort();
    }
    catch (const std::exception& ex)
    {
        muduo::CurrentThread::t_threadName = "crashed";
        fprintf(stderr, "exception caught in Thread %s\n", name_.c_str());
        fprintf(stderr, "reason: %s\n", ex.what());
        abort();
    }
    catch (...)
    {
        muduo::CurrentThread::t_threadName = "crashed";
        fprintf(stderr, "unknown exception caught in Thread %s\n", name_.c_str());
        throw; // rethrow
    }
}