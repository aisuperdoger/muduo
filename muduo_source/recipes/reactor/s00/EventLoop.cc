// excerpts from http://code.google.com/p/muduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include "EventLoop.h"

#include "logging/Logging.h"

#include <assert.h>
#include <poll.h>

using namespace muduo;

__thread EventLoop* t_loopInThisThread = 0; // __thread是GCC内置的线程局部存储设施。每一个线程有一个t_loopInThisThread，各个线程的t_loopInThisThread互不干扰。

EventLoop::EventLoop()
  : looping_(false),
    threadId_(CurrentThread::tid())
{
  LOG_TRACE << "EventLoop created " << this << " in thread " << threadId_;
  if (t_loopInThisThread) // 每个线程中都有一个t_loopInThisThread，如果线程中创建了第二个EventLoop对象，那么此时t_loopInThisThread必不为零
                          // 也就是保证了 一个线程中只有一个EventLoop对象。
  {
    LOG_FATAL << "Another EventLoop " << t_loopInThisThread
              << " exists in this thread " << threadId_;
  }
  else
  {
    t_loopInThisThread = this; // 保存本对象的地址
  }
}

EventLoop::~EventLoop()
{
  assert(!looping_);
  t_loopInThisThread = NULL; 
}

void EventLoop::loop()
{
  assert(!looping_); // 如果它的条件返回错误，则终止程序执行
  assertInLoopThread(); // 判断调用loop的线程和创建EventLoop对象时的线程是否一致
  looping_ = true;

  ::poll(NULL, 0, 5*1000); // 双冒号代表使用全局函数

  LOG_TRACE << "EventLoop " << this << " stop looping";
  looping_ = false;
} 

void EventLoop::abortNotInLoopThread()
{
  LOG_FATAL << "EventLoop::abortNotInLoopThread - EventLoop " << this
            << " was created in threadId_ = " << threadId_
            << ", current thread id = " <<  CurrentThread::tid();
}

