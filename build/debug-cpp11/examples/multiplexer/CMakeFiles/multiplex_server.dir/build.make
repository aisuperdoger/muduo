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
include examples/multiplexer/CMakeFiles/multiplex_server.dir/depend.make

# Include the progress variables for this target.
include examples/multiplexer/CMakeFiles/multiplex_server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/multiplexer/CMakeFiles/multiplex_server.dir/flags.make

examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.o: examples/multiplexer/CMakeFiles/multiplex_server.dir/flags.make
examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/multiplexer/multiplexer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multiplex_server.dir/multiplexer.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/multiplexer/multiplexer.cc

examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multiplex_server.dir/multiplexer.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/multiplexer/multiplexer.cc > CMakeFiles/multiplex_server.dir/multiplexer.cc.i

examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multiplex_server.dir/multiplexer.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/multiplexer/multiplexer.cc -o CMakeFiles/multiplex_server.dir/multiplexer.cc.s

# Object files for target multiplex_server
multiplex_server_OBJECTS = \
"CMakeFiles/multiplex_server.dir/multiplexer.cc.o"

# External object files for target multiplex_server
multiplex_server_EXTERNAL_OBJECTS =

bin/multiplex_server: examples/multiplexer/CMakeFiles/multiplex_server.dir/multiplexer.cc.o
bin/multiplex_server: examples/multiplexer/CMakeFiles/multiplex_server.dir/build.make
bin/multiplex_server: lib/libmuduo_net.a
bin/multiplex_server: lib/libmuduo_base.a
bin/multiplex_server: examples/multiplexer/CMakeFiles/multiplex_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/multiplex_server"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multiplex_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/multiplexer/CMakeFiles/multiplex_server.dir/build: bin/multiplex_server

.PHONY : examples/multiplexer/CMakeFiles/multiplex_server.dir/build

examples/multiplexer/CMakeFiles/multiplex_server.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer && $(CMAKE_COMMAND) -P CMakeFiles/multiplex_server.dir/cmake_clean.cmake
.PHONY : examples/multiplexer/CMakeFiles/multiplex_server.dir/clean

examples/multiplexer/CMakeFiles/multiplex_server.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo_source /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/multiplexer /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/examples/multiplexer/CMakeFiles/multiplex_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/multiplexer/CMakeFiles/multiplex_server.dir/depend

