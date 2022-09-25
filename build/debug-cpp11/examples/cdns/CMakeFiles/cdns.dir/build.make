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
include examples/cdns/CMakeFiles/cdns.dir/depend.make

# Include the progress variables for this target.
include examples/cdns/CMakeFiles/cdns.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cdns/CMakeFiles/cdns.dir/flags.make

examples/cdns/CMakeFiles/cdns.dir/dns.cc.o: examples/cdns/CMakeFiles/cdns.dir/flags.make
examples/cdns/CMakeFiles/cdns.dir/dns.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/cdns/dns.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/cdns/CMakeFiles/cdns.dir/dns.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cdns.dir/dns.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/cdns/dns.cc

examples/cdns/CMakeFiles/cdns.dir/dns.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cdns.dir/dns.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/cdns/dns.cc > CMakeFiles/cdns.dir/dns.cc.i

examples/cdns/CMakeFiles/cdns.dir/dns.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cdns.dir/dns.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/cdns/dns.cc -o CMakeFiles/cdns.dir/dns.cc.s

# Object files for target cdns
cdns_OBJECTS = \
"CMakeFiles/cdns.dir/dns.cc.o"

# External object files for target cdns
cdns_EXTERNAL_OBJECTS =

bin/cdns: examples/cdns/CMakeFiles/cdns.dir/dns.cc.o
bin/cdns: examples/cdns/CMakeFiles/cdns.dir/build.make
bin/cdns: lib/libmuduo_cdns.a
bin/cdns: lib/libmuduo_net.a
bin/cdns: lib/libmuduo_base.a
bin/cdns: examples/cdns/CMakeFiles/cdns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cdns"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cdns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cdns/CMakeFiles/cdns.dir/build: bin/cdns

.PHONY : examples/cdns/CMakeFiles/cdns.dir/build

examples/cdns/CMakeFiles/cdns.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns && $(CMAKE_COMMAND) -P CMakeFiles/cdns.dir/cmake_clean.cmake
.PHONY : examples/cdns/CMakeFiles/cdns.dir/clean

examples/cdns/CMakeFiles/cdns.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo_source /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/cdns /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/cdns/CMakeFiles/cdns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cdns/CMakeFiles/cdns.dir/depend

