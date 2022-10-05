// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#ifndef MUDUO_BASE_EXCEPTION_H
#define MUDUO_BASE_EXCEPTION_H

#include <muduo/base/Types.h>
#include <exception>

namespace muduo
{
    // 继承标准模板库的 Exception 类
    class Exception : public std::exception
    {
        public:
            explicit Exception(const char* what);
            explicit Exception(const string& what);
            virtual ~Exception() throw();
            virtual const char* what() const throw(); // 返回message_
            const char* stackTrace() const throw();   // 返回stack_

        private:
            void fillStackTrace();
            string demangle(const char* symbol);

            string message_; // 保存异常信息的字符串
            string stack_;   // 用于保存异常发生时，调用函数的栈回溯信息
    };  
}

#endif  // MUDUO_BASE_EXCEPTION_H