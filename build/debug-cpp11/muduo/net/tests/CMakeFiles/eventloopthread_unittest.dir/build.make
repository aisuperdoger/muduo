# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu1/projects/cpp/muduo/muduo_source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11

# Include any dependencies generated for this target.
include muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/depend.make

# Include the progress variables for this target.
include muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/flags.make

muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o: muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/flags.make
muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/tests/EventLoopThread_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/tests/EventLoopThread_unittest.cc

muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/tests/EventLoopThread_unittest.cc > CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.i

muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/tests/EventLoopThread_unittest.cc -o CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.s

# Object files for target eventloopthread_unittest
eventloopthread_unittest_OBJECTS = \
"CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o"

# External object files for target eventloopthread_unittest
eventloopthread_unittest_EXTERNAL_OBJECTS =

bin/eventloopthread_unittest: muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cc.o
bin/eventloopthread_unittest: muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/build.make
bin/eventloopthread_unittest: lib/libmuduo_net.a
bin/eventloopthread_unittest: lib/libmuduo_base.a
bin/eventloopthread_unittest: muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/eventloopthread_unittest"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eventloopthread_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/build: bin/eventloopthread_unittest

.PHONY : muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/build

muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/eventloopthread_unittest.dir/cmake_clean.cmake
.PHONY : muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/clean

muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo_source /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/tests /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/net/tests/CMakeFiles/eventloopthread_unittest.dir/depend

