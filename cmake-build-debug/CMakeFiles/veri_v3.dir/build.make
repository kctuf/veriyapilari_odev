# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\kctuf\CLionProjects\veri-v3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/veri_v3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/veri_v3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/veri_v3.dir/flags.make

CMakeFiles/veri_v3.dir/main.cpp.obj: CMakeFiles/veri_v3.dir/flags.make
CMakeFiles/veri_v3.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/veri_v3.dir/main.cpp.obj"
	C:\PROGRA~1\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\veri_v3.dir\main.cpp.obj -c C:\Users\kctuf\CLionProjects\veri-v3\main.cpp

CMakeFiles/veri_v3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/veri_v3.dir/main.cpp.i"
	C:\PROGRA~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\kctuf\CLionProjects\veri-v3\main.cpp > CMakeFiles\veri_v3.dir\main.cpp.i

CMakeFiles/veri_v3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/veri_v3.dir/main.cpp.s"
	C:\PROGRA~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\kctuf\CLionProjects\veri-v3\main.cpp -o CMakeFiles\veri_v3.dir\main.cpp.s

# Object files for target veri_v3
veri_v3_OBJECTS = \
"CMakeFiles/veri_v3.dir/main.cpp.obj"

# External object files for target veri_v3
veri_v3_EXTERNAL_OBJECTS =

veri_v3.exe: CMakeFiles/veri_v3.dir/main.cpp.obj
veri_v3.exe: CMakeFiles/veri_v3.dir/build.make
veri_v3.exe: CMakeFiles/veri_v3.dir/linklibs.rsp
veri_v3.exe: CMakeFiles/veri_v3.dir/objects1.rsp
veri_v3.exe: CMakeFiles/veri_v3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable veri_v3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\veri_v3.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/veri_v3.dir/build: veri_v3.exe

.PHONY : CMakeFiles/veri_v3.dir/build

CMakeFiles/veri_v3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\veri_v3.dir\cmake_clean.cmake
.PHONY : CMakeFiles/veri_v3.dir/clean

CMakeFiles/veri_v3.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\kctuf\CLionProjects\veri-v3 C:\Users\kctuf\CLionProjects\veri-v3 C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug C:\Users\kctuf\CLionProjects\veri-v3\cmake-build-debug\CMakeFiles\veri_v3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/veri_v3.dir/depend

