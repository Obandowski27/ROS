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
CMAKE_SOURCE_DIR = /media/david/6064A9F064A9C8DC/David/Research/ROS/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/david/6064A9F064A9C8DC/David/Research/ROS/build

# Include any dependencies generated for this target.
include numbers/CMakeFiles/add_two_ints_client.dir/depend.make

# Include the progress variables for this target.
include numbers/CMakeFiles/add_two_ints_client.dir/progress.make

# Include the compile flags for this target's objects.
include numbers/CMakeFiles/add_two_ints_client.dir/flags.make

numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o: numbers/CMakeFiles/add_two_ints_client.dir/flags.make
numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o: /media/david/6064A9F064A9C8DC/David/Research/ROS/src/numbers/src/add_two_ints_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/david/6064A9F064A9C8DC/David/Research/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o"
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o -c /media/david/6064A9F064A9C8DC/David/Research/ROS/src/numbers/src/add_two_ints_client.cpp

numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.i"
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/david/6064A9F064A9C8DC/David/Research/ROS/src/numbers/src/add_two_ints_client.cpp > CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.i

numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.s"
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/david/6064A9F064A9C8DC/David/Research/ROS/src/numbers/src/add_two_ints_client.cpp -o CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.s

# Object files for target add_two_ints_client
add_two_ints_client_OBJECTS = \
"CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o"

# External object files for target add_two_ints_client
add_two_ints_client_EXTERNAL_OBJECTS =

/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: numbers/CMakeFiles/add_two_ints_client.dir/src/add_two_ints_client.cpp.o
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: numbers/CMakeFiles/add_two_ints_client.dir/build.make
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/libroscpp.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/librosconsole.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/libxmlrpcpp.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/libroscpp_serialization.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/librostime.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /opt/ros/noetic/lib/libcpp_common.so
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client: numbers/CMakeFiles/add_two_ints_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/david/6064A9F064A9C8DC/David/Research/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client"
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_two_ints_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
numbers/CMakeFiles/add_two_ints_client.dir/build: /media/david/6064A9F064A9C8DC/David/Research/ROS/devel/lib/numbers/add_two_ints_client

.PHONY : numbers/CMakeFiles/add_two_ints_client.dir/build

numbers/CMakeFiles/add_two_ints_client.dir/clean:
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers && $(CMAKE_COMMAND) -P CMakeFiles/add_two_ints_client.dir/cmake_clean.cmake
.PHONY : numbers/CMakeFiles/add_two_ints_client.dir/clean

numbers/CMakeFiles/add_two_ints_client.dir/depend:
	cd /media/david/6064A9F064A9C8DC/David/Research/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/david/6064A9F064A9C8DC/David/Research/ROS/src /media/david/6064A9F064A9C8DC/David/Research/ROS/src/numbers /media/david/6064A9F064A9C8DC/David/Research/ROS/build /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers /media/david/6064A9F064A9C8DC/David/Research/ROS/build/numbers/CMakeFiles/add_two_ints_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : numbers/CMakeFiles/add_two_ints_client.dir/depend

