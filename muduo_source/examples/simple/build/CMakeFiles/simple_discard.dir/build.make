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
CMAKE_SOURCE_DIR = /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build

# Include any dependencies generated for this target.
include CMakeFiles/simple_discard.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_discard.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_discard.dir/flags.make

CMakeFiles/simple_discard.dir/discard/discard.cc.o: CMakeFiles/simple_discard.dir/flags.make
CMakeFiles/simple_discard.dir/discard/discard.cc.o: ../discard/discard.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_discard.dir/discard/discard.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_discard.dir/discard/discard.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/discard.cc

CMakeFiles/simple_discard.dir/discard/discard.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_discard.dir/discard/discard.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/discard.cc > CMakeFiles/simple_discard.dir/discard/discard.cc.i

CMakeFiles/simple_discard.dir/discard/discard.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_discard.dir/discard/discard.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/discard.cc -o CMakeFiles/simple_discard.dir/discard/discard.cc.s

CMakeFiles/simple_discard.dir/discard/main.cc.o: CMakeFiles/simple_discard.dir/flags.make
CMakeFiles/simple_discard.dir/discard/main.cc.o: ../discard/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simple_discard.dir/discard/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_discard.dir/discard/main.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/main.cc

CMakeFiles/simple_discard.dir/discard/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_discard.dir/discard/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/main.cc > CMakeFiles/simple_discard.dir/discard/main.cc.i

CMakeFiles/simple_discard.dir/discard/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_discard.dir/discard/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/discard/main.cc -o CMakeFiles/simple_discard.dir/discard/main.cc.s

# Object files for target simple_discard
simple_discard_OBJECTS = \
"CMakeFiles/simple_discard.dir/discard/discard.cc.o" \
"CMakeFiles/simple_discard.dir/discard/main.cc.o"

# External object files for target simple_discard
simple_discard_EXTERNAL_OBJECTS =

simple_discard: CMakeFiles/simple_discard.dir/discard/discard.cc.o
simple_discard: CMakeFiles/simple_discard.dir/discard/main.cc.o
simple_discard: CMakeFiles/simple_discard.dir/build.make
simple_discard: CMakeFiles/simple_discard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable simple_discard"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_discard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_discard.dir/build: simple_discard

.PHONY : CMakeFiles/simple_discard.dir/build

CMakeFiles/simple_discard.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_discard.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_discard.dir/clean

CMakeFiles/simple_discard.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build /home/ubuntu1/projects/cpp/muduo/muduo_source/examples/simple/build/CMakeFiles/simple_discard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_discard.dir/depend

