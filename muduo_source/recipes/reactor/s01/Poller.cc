// excerpts from http://code.google.com/p/muduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include "Poller.h"

#include "Channel.h"
#include "logging/Logging.h"

#include <assert.h>
#include <poll.h>

using namespace muduo;

Poller::Poller(EventLoop* loop)
  : ownerLoop_(loop)
{
}

Poller::~Poller()
{
}

Timestamp Poller::poll(int timeoutMs, ChannelList* activeChannels)
{
  // XXX pollfds_ shouldn't change
  int numEvents = ::poll(&*pollfds_.begin(), pollfds_.size(), timeoutMs);
  Timestamp now(Timestamp::now()); // 应该是返回当前的时间戳
  if (numEvents > 0) {
    LOG_TRACE << numEvents << " events happended";
    fillActiveChannels(numEvents, activeChannels);
  } else if (numEvents == 0) {
    LOG_TRACE << " nothing happended";
  } else {
    LOG_SYSERR << "Poller::poll()";
  }
  return now;
}

void Poller::fillActiveChannels(int numEvents,
                                ChannelList* activeChannels) const
{
  for (PollFdList::const_iterator pfd = pollfds_.begin();
      pfd != pollfds_.end() && numEvents > 0; ++pfd)
  {
    if (pfd->revents > 0)
    {
      --numEvents;
      ChannelMap::const_iterator ch = channels_.find(pfd->fd);
      assert(ch != channels_.end());
      Channel* channel = ch->second;
      assert(channel->fd() == pfd->fd);
      channel->set_revents(pfd->revents);
      // pfd->revents = 0;
      activeChannels->push_back(channel);
    }
  }
}

void Poller::updateChannel(Channel* channel)
{
  assertInLoopThread(); // 判断调用updateChannel函数的线程和创建EventLoop对象时的线程是否一致
  LOG_TRACE << "fd = " << channel->fd() << " events = " << channel->events();
  if (channel->index() < 0) {
    // a new one, add to pollfds_
    assert(channels_.find(channel->fd()) == channels_.end()); // channel_中没有channel->fd()时返回channel_.end()
    struct pollfd pfd;
    pfd.fd = channel->fd();
    pfd.events = static_cast<short>(channel->events());
    pfd.revents = 0;
    pollfds_.push_back(pfd);
    int idx = static_cast<int>(pollfds_.size())-1;
    channel->set_index(idx); // 通过index，就可以快速找到某个channel对象对应的pollfd结构在pollfds_的什么位置
    channels_[pfd.fd] = channel;  // 通过channels_可以快速找到某个套接字对应的channel
  } else {
    // update existing one
    assert(channels_.find(channel->fd()) != channels_.end());
    assert(channels_[channel->fd()] == channel);
    int idx = channel->index();
    assert(0 <= idx && idx < static_cast<int>(pollfds_.size()));
    struct pollfd& pfd = pollfds_[idx];
    assert(pfd.fd == channel->fd() || pfd.fd == -1); // 为什么需要这么多assert，没有这些assert时，会出现什么情况？
    pfd.events = static_cast<short>(channel->events());
    pfd.revents = 0;
    if (channel->isNoneEvent()) {
      // ignore this pollfd
      pfd.fd = -1;
    }
  }
}

