#ifndef MUDUO_BASE_TYPES_H
#define MUDUO_BASE_TYPES_H

#include <stdint.h>
#ifdef MUDUO_STD_STRING
#include <string>
#else  // !MUDUO_STD_STRING
#include <ext/vstring.h>
#include <ext/vstring_fwd.h>
#endif

namespace muduo
{
    #ifdef MUDUO_STD_STRING
      using std::string;
    #else  // !MUDUO_STD_STRING
      typedef __gnu_cxx::__sso_string string; // 和using std::string;向外提供的接口是一样的，只是内部的实现过程不一样。
    #endif

    // 向上转型
    template<typename To, typename From>
    inline To implicit_cast(From const &f) { 
        return f; // 实际上还是进行了隐式转换
    }

    // 向下转型
    template<typename To, typename From>     // use like this: down_cast<T*>(foo);
    inline To down_cast(From* f) {                   // so we only accept pointers
        // 永远都不会满足
        if (false) {
            implicit_cast<From*, To>(0);
        }

        // 如果是调试状态。NDEBUG代表不是调试状态，GOOGLE_PROTOBUF_NO_RTTI代表没有开启RTTI,dynamic必须要在RTTI下使用
        #if !defined(NDEBUG) && !defined(GOOGLE_PROTOBUF_NO_RTTI)
            assert(f == NULL || dynamic_cast<To>(f) != NULL);  // RTTI: debug mode only!
        #endif
            return static_cast<To>(f); // 向下转型
    }
}

#endif