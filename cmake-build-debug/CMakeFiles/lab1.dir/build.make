# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\valik\CLionProjects\pirv\lab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1.dir/flags.make

CMakeFiles/lab1.dir/main.cpp.obj: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab1.dir/main.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1.dir\main.cpp.obj -c C:\Users\valik\CLionProjects\pirv\lab1\main.cpp

CMakeFiles/lab1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/main.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\valik\CLionProjects\pirv\lab1\main.cpp > CMakeFiles\lab1.dir\main.cpp.i

CMakeFiles/lab1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/main.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\valik\CLionProjects\pirv\lab1\main.cpp -o CMakeFiles\lab1.dir\main.cpp.s

CMakeFiles/lab1.dir/random.cpp.obj: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/random.cpp.obj: ../random.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab1.dir/random.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1.dir\random.cpp.obj -c C:\Users\valik\CLionProjects\pirv\lab1\random.cpp

CMakeFiles/lab1.dir/random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/random.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\valik\CLionProjects\pirv\lab1\random.cpp > CMakeFiles\lab1.dir\random.cpp.i

CMakeFiles/lab1.dir/random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/random.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\valik\CLionProjects\pirv\lab1\random.cpp -o CMakeFiles\lab1.dir\random.cpp.s

CMakeFiles/lab1.dir/time_util.cpp.obj: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/time_util.cpp.obj: ../time_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab1.dir/time_util.cpp.obj"
	C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1.dir\time_util.cpp.obj -c C:\Users\valik\CLionProjects\pirv\lab1\time_util.cpp

CMakeFiles/lab1.dir/time_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/time_util.cpp.i"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\valik\CLionProjects\pirv\lab1\time_util.cpp > CMakeFiles\lab1.dir\time_util.cpp.i

CMakeFiles/lab1.dir/time_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/time_util.cpp.s"
	C:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\valik\CLionProjects\pirv\lab1\time_util.cpp -o CMakeFiles\lab1.dir\time_util.cpp.s

# Object files for target lab1
lab1_OBJECTS = \
"CMakeFiles/lab1.dir/main.cpp.obj" \
"CMakeFiles/lab1.dir/random.cpp.obj" \
"CMakeFiles/lab1.dir/time_util.cpp.obj"

# External object files for target lab1
lab1_EXTERNAL_OBJECTS =

lab1.exe: CMakeFiles/lab1.dir/main.cpp.obj
lab1.exe: CMakeFiles/lab1.dir/random.cpp.obj
lab1.exe: CMakeFiles/lab1.dir/time_util.cpp.obj
lab1.exe: CMakeFiles/lab1.dir/build.make
lab1.exe: C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/5.1.0/libgomp.dll.a
lab1.exe: C:/TDM-GCC-64/x86_64-w64-mingw32/lib/libmingwthrd.a
lab1.exe: C:/TDM-GCC-64/x86_64-w64-mingw32/lib/libmingwthrd.a
lab1.exe: CMakeFiles/lab1.dir/linklibs.rsp
lab1.exe: CMakeFiles/lab1.dir/objects1.rsp
lab1.exe: CMakeFiles/lab1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable lab1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1.dir/build: lab1.exe

.PHONY : CMakeFiles/lab1.dir/build

CMakeFiles/lab1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab1.dir/clean

CMakeFiles/lab1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\valik\CLionProjects\pirv\lab1 C:\Users\valik\CLionProjects\pirv\lab1 C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug C:\Users\valik\CLionProjects\pirv\lab1\cmake-build-debug\CMakeFiles\lab1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1.dir/depend

