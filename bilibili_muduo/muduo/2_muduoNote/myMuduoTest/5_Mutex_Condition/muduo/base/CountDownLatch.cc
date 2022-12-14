// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include <muduo/base/CountDownLatch.h>

using namespace muduo;

CountDownLatch::CountDownLatch(int count)
    : mutex_(),                 // 初始化好 mutex_
      condition_(mutex_),
      count_(count)
{
}

void CountDownLatch::wait()
{
    MutexLockGuard lock(mutex_);
    while (count_ > 0) {
        condition_.wait();
    }
}

void CountDownLatch::countDown()
{
    MutexLockGuard lock(mutex_); 
    --count_;
    if (count_ == 0) {
        condition_.notifyAll(); 
    }
}

int CountDownLatch::getCount() const
{
    MutexLockGuard lock(mutex_); // 正常情况下不可以在const类型的函数改变数据成员，但是mutex_被关键字mutable进行修饰了，就可以被改变
    return count_;
}

