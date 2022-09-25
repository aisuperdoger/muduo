#ifndef _THREAD_H_
#define _THREAD_H_

#include <pthread.h>

class Thread
{
public:
	Thread();

	// 由于要用到多态，所以这里析构函数设为虚函数。
	// 设为虚函数以后，使用父类指针访问的子类对象结束后，才会调用子类的析构函数，不然只会调用父类的析构函数。
	virtual ~Thread();

	void Start();
	void Join();

	void SetAutoDelete(bool autoDelete);

private:
	// 加了静态，就没有隐含的 this 指针了
	static void *ThreadRoutine(void *arg);
	// 纯虚函数
	virtual void Run() = 0;
	pthread_t threadId_;
	bool autoDelete_;
};

#endif // _THREAD_H_
