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
CMAKE_SOURCE_DIR = /home/pi/Example/CMakeA1_LibRealSense_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Example/CMakeA1_LibRealSense_1/build

# Include any dependencies generated for this target.
include CMakeFiles/measure_walk.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/measure_walk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/measure_walk.dir/flags.make

CMakeFiles/measure_walk.dir/measure_walk.cpp.o: CMakeFiles/measure_walk.dir/flags.make
CMakeFiles/measure_walk.dir/measure_walk.cpp.o: ../measure_walk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Example/CMakeA1_LibRealSense_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/measure_walk.dir/measure_walk.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/measure_walk.dir/measure_walk.cpp.o -c /home/pi/Example/CMakeA1_LibRealSense_1/measure_walk.cpp

CMakeFiles/measure_walk.dir/measure_walk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/measure_walk.dir/measure_walk.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Example/CMakeA1_LibRealSense_1/measure_walk.cpp > CMakeFiles/measure_walk.dir/measure_walk.cpp.i

CMakeFiles/measure_walk.dir/measure_walk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/measure_walk.dir/measure_walk.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Example/CMakeA1_LibRealSense_1/measure_walk.cpp -o CMakeFiles/measure_walk.dir/measure_walk.cpp.s

# Object files for target measure_walk
measure_walk_OBJECTS = \
"CMakeFiles/measure_walk.dir/measure_walk.cpp.o"

# External object files for target measure_walk
measure_walk_EXTERNAL_OBJECTS =

measure_walk: CMakeFiles/measure_walk.dir/measure_walk.cpp.o
measure_walk: CMakeFiles/measure_walk.dir/build.make
measure_walk: /usr/local/lib/librealsense2.so.2.31.0
measure_walk: CMakeFiles/measure_walk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Example/CMakeA1_LibRealSense_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable measure_walk"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/measure_walk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/measure_walk.dir/build: measure_walk

.PHONY : CMakeFiles/measure_walk.dir/build

CMakeFiles/measure_walk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/measure_walk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/measure_walk.dir/clean

CMakeFiles/measure_walk.dir/depend:
	cd /home/pi/Example/CMakeA1_LibRealSense_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Example/CMakeA1_LibRealSense_1 /home/pi/Example/CMakeA1_LibRealSense_1 /home/pi/Example/CMakeA1_LibRealSense_1/build /home/pi/Example/CMakeA1_LibRealSense_1/build /home/pi/Example/CMakeA1_LibRealSense_1/build/CMakeFiles/measure_walk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/measure_walk.dir/depend

