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
include muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/depend.make

# Include the progress variables for this target.
include muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/flags.make

muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o: muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/flags.make
muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o: /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/protorpc/RpcCodec_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o -c /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/protorpc/RpcCodec_test.cc

muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.i"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/protorpc/RpcCodec_test.cc > CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.i

muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.s"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/protorpc/RpcCodec_test.cc -o CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.s

# Object files for target protobuf_rpc_wire_test
protobuf_rpc_wire_test_OBJECTS = \
"CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o"

# External object files for target protobuf_rpc_wire_test
protobuf_rpc_wire_test_EXTERNAL_OBJECTS =

bin/protobuf_rpc_wire_test: muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/RpcCodec_test.cc.o
bin/protobuf_rpc_wire_test: muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/build.make
bin/protobuf_rpc_wire_test: lib/libmuduo_protorpc_wire.a
bin/protobuf_rpc_wire_test: lib/libmuduo_protobuf_codec.a
bin/protobuf_rpc_wire_test: lib/libmuduo_net.a
bin/protobuf_rpc_wire_test: lib/libmuduo_base.a
bin/protobuf_rpc_wire_test: muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/protobuf_rpc_wire_test"
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protobuf_rpc_wire_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/build: bin/protobuf_rpc_wire_test

.PHONY : muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/build

muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/clean:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc && $(CMAKE_COMMAND) -P CMakeFiles/protobuf_rpc_wire_test.dir/cmake_clean.cmake
.PHONY : muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/clean

muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/depend:
	cd /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu1/projects/cpp/muduo/muduo_source /home/ubuntu1/projects/cpp/muduo/muduo_source/muduo/net/protorpc /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11 /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc /home/ubuntu1/projects/cpp/muduo/build/debug-cpp11/muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/net/protorpc/CMakeFiles/protobuf_rpc_wire_test.dir/depend

