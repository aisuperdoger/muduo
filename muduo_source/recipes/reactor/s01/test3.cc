#include "Channel.h"
#include "EventLoop.h"

#include <stdio.h>
#include <sys/timerfd.h>

muduo::EventLoop* g_loop;

void timeout()
{
  printf("Timeout!\n");
  g_loop->quit();
}

int main()
{
  muduo::EventLoop loop;
  g_loop = &loop;

  int timerfd = ::timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK | TFD_CLOEXEC); // 时间到了文件描述符timefd就变成可读。
  muduo::Channel channel(&loop, timerfd); // 一个channel对应一个套接字
  channel.setReadCallback(timeout); // 读事件发生时的回调函数
  channel.enableReading(); // 使能的时候才真正将fd加入到Poller中，即IO复用函数poll中。

  struct itimerspec howlong;
  bzero(&howlong, sizeof howlong);
  howlong.it_value.tv_sec = 5;
  ::timerfd_settime(timerfd, 0, &howlong, NULL);

  loop.loop();

  ::close(timerfd);
}
