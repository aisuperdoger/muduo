#include <muduo/base/AsyncLogging.h>
#include <muduo/base/LogFile.h>
#include <muduo/base/Timestamp.h>

#include <stdio.h>

using namespace muduo;

AsyncLogging::AsyncLogging(const string& basename,
                           size_t rollSize,
                           int flushInterval)
  : flushInterval_(flushInterval),
    running_(false),
    basename_(basename),
    rollSize_(rollSize),
    thread_(boost::bind(&AsyncLogging::threadFunc, this), "Logging"),
    latch_(1),
    mutex_(),
    cond_(mutex_),
    currentBuffer_(new Buffer),         // ��ǰ������
    nextBuffer_(new Buffer),            // Ԥ��������
    buffers_()                          // �������б�
{
    currentBuffer_->bzero();
    nextBuffer_->bzero();
    buffers_.reserve(16);
}

 // ��ǰ���������̵߳��ã���־����д����������
void AsyncLogging::append(const char* logline, int len)
{
    muduo::MutexLockGuard lock(mutex_);

    if (currentBuffer_->avail() > len)
    {
        // ��ǰ������δ����������׷�ӵ�ĩβ
        currentBuffer_->append(logline, len);
    }
    else
    {
        // ��ǰ����������������ǰ���������ӵ���д���ļ����������Ļ������б�
        buffers_.push_back(currentBuffer_.release());

        // ����ǰ����������ΪԤ��������
        if (nextBuffer_)
        {
            currentBuffer_ = boost::ptr_container::move(nextBuffer_);                           // �ƶ�����
        }
        else
        {
            // ������������ٷ�����ǰ��д���ٶ�̫�죬һ���Ӱ����黺������д�꣬
            // ��ô��ֻ�÷���һ���µĻ�������
            currentBuffer_.reset(new Buffer);                                                   // Rarely happens
        }

        currentBuffer_->append(logline, len);
        cond_.notify();                                                                         // ֪ͨ��˿�ʼд����־
    }
}


// ������������̵߳��ã�������д����־�ļ���
void AsyncLogging::threadFunc()
{
    assert(running_ == true);
    latch_.countDown();
    LogFile output(basename_, rollSize_, false);

    // ׼��������л�����
    BufferPtr newBuffer1(new Buffer);
    BufferPtr newBuffer2(new Buffer);
    newBuffer1->bzero();
    newBuffer2->bzero();
    // ׼���������б�
    BufferVector buffersToWrite;
    buffersToWrite.reserve(16);

    while (running_)
    {
        assert(newBuffer1 && newBuffer1->length() == 0);
        assert(newBuffer2 && newBuffer2->length() == 0);
        assert(buffersToWrite.empty());

        {
            muduo::MutexLockGuard lock(mutex_);
            
            if (buffers_.empty())                                                               // unusual usage!��ע�⣬������һ���ǳ����÷���
            {
                cond_.waitForSeconds(flushInterval_);                                           // �ȴ�ǰ��д����һ�����߶��buffer,����һ����ʱʱ�䵽��
            }
            
            buffers_.push_back(currentBuffer_.release());                                       // ����ǰ����������buffers_
            currentBuffer_ = boost::ptr_container::move(newBuffer1);                            // �����е�newBuffer1��Ϊ��ǰ������
            buffersToWrite.swap(buffers_);                                                      // buffers_��buffersToWrite��������������Ĵ���������ٽ���֮�ⰲȫ�ط���buffersToWrite
            
            if (!nextBuffer_)
            {
                nextBuffer_ = boost::ptr_container::move(newBuffer2);                           // ȷ��ǰ��ʼ����һ��Ԥ��buffer�ɹ����䣬
                                                                                                // ����ǰ���ٽ��������ڴ�ĸ��ʣ�����ǰ���ٽ������ȡ�
            }
        }

        assert(!buffersToWrite.empty());

        // ��Ϣ�ѻ�
        // ǰ��������ѭ����ƴ��������־��Ϣ��������˵Ĵ�������������ǵ��͵������ٶ�
        // ���������ٶ����⣬������������ڴ��жѻ�������ʱ�����������⣨�����ڴ治�㣩
        // ���������������ڴ�ʧ�ܣ�
        if (buffersToWrite.size() > 25)
        {
            char buf[256];
            snprintf(buf, sizeof buf, "Dropped log messages at %s, %zd larger buffers\n",
                    Timestamp::now().toFormattedString().c_str(),
                    buffersToWrite.size()-2);
            fputs(buf, stderr);
            output.append(buf, static_cast<int>(strlen(buf)));

            buffersToWrite.erase(buffersToWrite.begin()+2, buffersToWrite.end());                 // ����������־�����ڳ��ڴ棬���������黺����
        }

        for (size_t i = 0; i < buffersToWrite.size(); ++i)
        {
            // FIXME: use unbuffered stdio FILE ? or use ::writev ?
            output.append(buffersToWrite[i].data(), buffersToWrite[i].length());
        }

        if (buffersToWrite.size() > 2)
        {
            // drop non-bzero-ed buffers, avoid trashing
            buffersToWrite.resize(2);                                                             // ����������buffer������newBuffer1��newBuffer2
        }

        if (!newBuffer1)
        {
            assert(!buffersToWrite.empty());
            newBuffer1 = buffersToWrite.pop_back();
            newBuffer1->reset();
        }

        if (!newBuffer2)
        {
            assert(!buffersToWrite.empty());
            newBuffer2 = buffersToWrite.pop_back();
            newBuffer2->reset();
        }

        buffersToWrite.clear();
        output.flush();
    }

    output.flush();
}

