
CXXFLAGS = -Wall -std=c++11 -pthread -O2 -g -iquote include/ -I../ -I/usr/local/include
LDFLAGS = -L lib/ -L/usr/local/lib -ltpc

LIB_HEADERS := $(wildcard include/*.h) ../datetime/Timestamp.h ../thread/Atomic.h
LIB_SRCS := $(wildcard lib/*.cc) ../datetime/Timestamp.cc
LIB_OBJS := $(LIB_SRCS:.cc=.o)
LIB := lib/libtpc.a

BIN_SRCS := $(wildcard bin/*.cc)
BINS := $(BIN_SRCS:.cc=)

all: $(BINS)
lib: $(LIB)

$(LIB_OBJS) : Makefile $(LIB_HEADERS)

$(LIB): $(LIB_OBJS)
	ar rcs $@ $^

$(BINS): $(LIB)

bin/ttcp: LDLIBS += -lboost_program_options

clean:
	rm -f $(LIB_OBJS) $(LIB) $(BINS)

