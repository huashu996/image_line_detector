# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/cxl/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/cxl/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cxl/workspace/LBD_Descriptor-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cxl/workspace/LBD_Descriptor-master/build

# Include any dependencies generated for this target.
include CMakeFiles/LineMatchingLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LineMatchingLib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LineMatchingLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LineMatchingLib.dir/flags.make

CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o: CMakeFiles/LineMatchingLib.dir/flags.make
CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o: /home/cxl/workspace/LBD_Descriptor-master/LineDescriptor.cpp
CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o: CMakeFiles/LineMatchingLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cxl/workspace/LBD_Descriptor-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o -MF CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o.d -o CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o -c /home/cxl/workspace/LBD_Descriptor-master/LineDescriptor.cpp

CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cxl/workspace/LBD_Descriptor-master/LineDescriptor.cpp > CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.i

CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cxl/workspace/LBD_Descriptor-master/LineDescriptor.cpp -o CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.s

CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o: CMakeFiles/LineMatchingLib.dir/flags.make
CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o: /home/cxl/workspace/LBD_Descriptor-master/EDLineDetector.cpp
CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o: CMakeFiles/LineMatchingLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cxl/workspace/LBD_Descriptor-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o -MF CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o.d -o CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o -c /home/cxl/workspace/LBD_Descriptor-master/EDLineDetector.cpp

CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cxl/workspace/LBD_Descriptor-master/EDLineDetector.cpp > CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.i

CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cxl/workspace/LBD_Descriptor-master/EDLineDetector.cpp -o CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.s

# Object files for target LineMatchingLib
LineMatchingLib_OBJECTS = \
"CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o" \
"CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o"

# External object files for target LineMatchingLib
LineMatchingLib_EXTERNAL_OBJECTS =

libLineMatchingLib.so: CMakeFiles/LineMatchingLib.dir/LineDescriptor.cpp.o
libLineMatchingLib.so: CMakeFiles/LineMatchingLib.dir/EDLineDetector.cpp.o
libLineMatchingLib.so: CMakeFiles/LineMatchingLib.dir/build.make
libLineMatchingLib.so: /home/cxl/opencv-3.2.0/installed/lib/libopencv_highgui.so.3.2.0
libLineMatchingLib.so: /home/cxl/opencv-3.2.0/installed/lib/libopencv_imgproc.so.3.2.0
libLineMatchingLib.so: /home/cxl/opencv-3.2.0/installed/lib/libopencv_core.so.3.2.0
libLineMatchingLib.so: CMakeFiles/LineMatchingLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cxl/workspace/LBD_Descriptor-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libLineMatchingLib.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LineMatchingLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LineMatchingLib.dir/build: libLineMatchingLib.so
.PHONY : CMakeFiles/LineMatchingLib.dir/build

CMakeFiles/LineMatchingLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LineMatchingLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LineMatchingLib.dir/clean

CMakeFiles/LineMatchingLib.dir/depend:
	cd /home/cxl/workspace/LBD_Descriptor-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cxl/workspace/LBD_Descriptor-master /home/cxl/workspace/LBD_Descriptor-master /home/cxl/workspace/LBD_Descriptor-master/build /home/cxl/workspace/LBD_Descriptor-master/build /home/cxl/workspace/LBD_Descriptor-master/build/CMakeFiles/LineMatchingLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LineMatchingLib.dir/depend

