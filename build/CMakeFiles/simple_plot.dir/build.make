# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/asus/Desktop/matplotc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/asus/Desktop/matplotc/build

# Include any dependencies generated for this target.
include CMakeFiles/simple_plot.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/simple_plot.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_plot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_plot.dir/flags.make

CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o: CMakeFiles/simple_plot.dir/flags.make
CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o: /home/asus/Desktop/matplotc/examples/simple_plot.cpp
CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o: CMakeFiles/simple_plot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/asus/Desktop/matplotc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o -MF CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o.d -o CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o -c /home/asus/Desktop/matplotc/examples/simple_plot.cpp

CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/asus/Desktop/matplotc/examples/simple_plot.cpp > CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.i

CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/asus/Desktop/matplotc/examples/simple_plot.cpp -o CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.s

# Object files for target simple_plot
simple_plot_OBJECTS = \
"CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o"

# External object files for target simple_plot
simple_plot_EXTERNAL_OBJECTS =

simple_plot: CMakeFiles/simple_plot.dir/examples/simple_plot.cpp.o
simple_plot: CMakeFiles/simple_plot.dir/build.make
simple_plot: libplotter.a
simple_plot: /usr/lib/x86_64-linux-gnu/libGL.so
simple_plot: /usr/lib/x86_64-linux-gnu/libGLEW.so
simple_plot: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
simple_plot: CMakeFiles/simple_plot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/asus/Desktop/matplotc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simple_plot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_plot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_plot.dir/build: simple_plot
.PHONY : CMakeFiles/simple_plot.dir/build

CMakeFiles/simple_plot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_plot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_plot.dir/clean

CMakeFiles/simple_plot.dir/depend:
	cd /home/asus/Desktop/matplotc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/asus/Desktop/matplotc /home/asus/Desktop/matplotc /home/asus/Desktop/matplotc/build /home/asus/Desktop/matplotc/build /home/asus/Desktop/matplotc/build/CMakeFiles/simple_plot.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/simple_plot.dir/depend

