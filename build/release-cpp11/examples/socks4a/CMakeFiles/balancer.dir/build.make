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
CMAKE_SOURCE_DIR = /home/ubuntu1/projects/cpp/muduo/muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu1/projects/cpp/muduo/build/release-cpp11

# Include any dependencies generated for this target.
include examples/socks4a/CMakeFiles/balancer.dir/depend.make

# Include the progress variables for this target.
include examples/socks4a/CMakeFiles/balancer.dir/progress.make

# Include the compile flags for this target's objects.
include examples/socks4a/CMakeFiles/balancer.dir/flags.make

examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.o: examples/socks4a/CMakeFiles/balancer.dir/flags.make
examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo/examples/socks4a/balancer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/balancer.dir/balancer.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo/examples/socks4a/balancer.cc

examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/balancer.dir/balancer.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo/examples/socks4a/balancer.cc > CMakeFiles/balancer.dir/balancer.cc.i

examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/balancer.dir/balancer.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo/examples/socks4a/balancer.cc -o CMakeFiles/balancer.dir/balancer.cc.s

# Object files for target balancer
balancer_OBJECTS = \
"CMakeFiles/balancer.dir/balancer.cc.o"

# External object files for target balancer
balancer_EXTERNAL_OBJECTS =

bin/balancer: examples/socks4a/CMakeFiles/balancer.dir/balancer.cc.o
bin/balancer: examples/socks4a/CMakeFiles/balancer.dir/build.make
bin/balancer: lib/libmuduo_net.a
bin/balancer: lib/libmuduo_base.a
bin/balancer: examples/socks4a/CMakeFiles/balancer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/balancer"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/balancer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/socks4a/CMakeFiles/balancer.dir/build: bin/balancer

.PHONY : examples/socks4a/CMakeFiles/balancer.dir/build

examples/socks4a/CMakeFiles/balancer.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a && $(CMAKE_COMMAND) -P CMakeFiles/balancer.dir/cmake_clean.cmake
.PHONY : examples/socks4a/CMakeFiles/balancer.dir/clean

examples/socks4a/CMakeFiles/balancer.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo /home/ubuntu1/projects/cpp/muduo/muduo/examples/socks4a /home/ubuntu1/projects/cpp/muduo/build/release-cpp11 /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/socks4a/CMakeFiles/balancer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/socks4a/CMakeFiles/balancer.dir/depend

