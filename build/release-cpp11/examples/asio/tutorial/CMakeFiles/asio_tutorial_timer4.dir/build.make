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
include examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/depend.make

# Include the progress variables for this target.
include examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/progress.make

# Include the compile flags for this target's objects.
include examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/flags.make

examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o: examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/flags.make
examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo/examples/asio/tutorial/timer4/timer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo/examples/asio/tutorial/timer4/timer.cc

examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo/examples/asio/tutorial/timer4/timer.cc > CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.i

examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo/examples/asio/tutorial/timer4/timer.cc -o CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.s

# Object files for target asio_tutorial_timer4
asio_tutorial_timer4_OBJECTS = \
"CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o"

# External object files for target asio_tutorial_timer4
asio_tutorial_timer4_EXTERNAL_OBJECTS =

bin/asio_tutorial_timer4: examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/timer4/timer.cc.o
bin/asio_tutorial_timer4: examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/build.make
bin/asio_tutorial_timer4: lib/libmuduo_net.a
bin/asio_tutorial_timer4: lib/libmuduo_base.a
bin/asio_tutorial_timer4: examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/asio_tutorial_timer4"
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asio_tutorial_timer4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/build: bin/asio_tutorial_timer4

.PHONY : examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/build

examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial && $(CMAKE_COMMAND) -P CMakeFiles/asio_tutorial_timer4.dir/cmake_clean.cmake
.PHONY : examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/clean

examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/release-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo /home/ubuntu1/projects/cpp/muduo/muduo/examples/asio/tutorial /home/ubuntu1/projects/cpp/muduo/build/release-cpp11 /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial /home/ubuntu1/projects/cpp/muduo/build/release-cpp11/examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/asio/tutorial/CMakeFiles/asio_tutorial_timer4.dir/depend

