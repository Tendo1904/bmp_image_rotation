# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Clabs\bmp-image-rotation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Clabs\bmp-image-rotation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/bmp_image_rotation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bmp_image_rotation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bmp_image_rotation.dir/flags.make

CMakeFiles/bmp_image_rotation.dir/src/main.c.obj: CMakeFiles/bmp_image_rotation.dir/flags.make
CMakeFiles/bmp_image_rotation.dir/src/main.c.obj: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/bmp_image_rotation.dir/src/main.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\bmp_image_rotation.dir\src\main.c.obj   -c D:\Clabs\bmp-image-rotation\src\main.c

CMakeFiles/bmp_image_rotation.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bmp_image_rotation.dir/src/main.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Clabs\bmp-image-rotation\src\main.c > CMakeFiles\bmp_image_rotation.dir\src\main.c.i

CMakeFiles/bmp_image_rotation.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bmp_image_rotation.dir/src/main.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Clabs\bmp-image-rotation\src\main.c -o CMakeFiles\bmp_image_rotation.dir\src\main.c.s

CMakeFiles/bmp_image_rotation.dir/src/image.c.obj: CMakeFiles/bmp_image_rotation.dir/flags.make
CMakeFiles/bmp_image_rotation.dir/src/image.c.obj: ../src/image.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/bmp_image_rotation.dir/src/image.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\bmp_image_rotation.dir\src\image.c.obj   -c D:\Clabs\bmp-image-rotation\src\image.c

CMakeFiles/bmp_image_rotation.dir/src/image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bmp_image_rotation.dir/src/image.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Clabs\bmp-image-rotation\src\image.c > CMakeFiles\bmp_image_rotation.dir\src\image.c.i

CMakeFiles/bmp_image_rotation.dir/src/image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bmp_image_rotation.dir/src/image.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Clabs\bmp-image-rotation\src\image.c -o CMakeFiles\bmp_image_rotation.dir\src\image.c.s

CMakeFiles/bmp_image_rotation.dir/src/utils.c.obj: CMakeFiles/bmp_image_rotation.dir/flags.make
CMakeFiles/bmp_image_rotation.dir/src/utils.c.obj: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/bmp_image_rotation.dir/src/utils.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\bmp_image_rotation.dir\src\utils.c.obj   -c D:\Clabs\bmp-image-rotation\src\utils.c

CMakeFiles/bmp_image_rotation.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bmp_image_rotation.dir/src/utils.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Clabs\bmp-image-rotation\src\utils.c > CMakeFiles\bmp_image_rotation.dir\src\utils.c.i

CMakeFiles/bmp_image_rotation.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bmp_image_rotation.dir/src/utils.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Clabs\bmp-image-rotation\src\utils.c -o CMakeFiles\bmp_image_rotation.dir\src\utils.c.s

CMakeFiles/bmp_image_rotation.dir/src/bmp.c.obj: CMakeFiles/bmp_image_rotation.dir/flags.make
CMakeFiles/bmp_image_rotation.dir/src/bmp.c.obj: ../src/bmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/bmp_image_rotation.dir/src/bmp.c.obj"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\bmp_image_rotation.dir\src\bmp.c.obj   -c D:\Clabs\bmp-image-rotation\src\bmp.c

CMakeFiles/bmp_image_rotation.dir/src/bmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bmp_image_rotation.dir/src/bmp.c.i"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Clabs\bmp-image-rotation\src\bmp.c > CMakeFiles\bmp_image_rotation.dir\src\bmp.c.i

CMakeFiles/bmp_image_rotation.dir/src/bmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bmp_image_rotation.dir/src/bmp.c.s"
	C:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Clabs\bmp-image-rotation\src\bmp.c -o CMakeFiles\bmp_image_rotation.dir\src\bmp.c.s

# Object files for target bmp_image_rotation
bmp_image_rotation_OBJECTS = \
"CMakeFiles/bmp_image_rotation.dir/src/main.c.obj" \
"CMakeFiles/bmp_image_rotation.dir/src/image.c.obj" \
"CMakeFiles/bmp_image_rotation.dir/src/utils.c.obj" \
"CMakeFiles/bmp_image_rotation.dir/src/bmp.c.obj"

# External object files for target bmp_image_rotation
bmp_image_rotation_EXTERNAL_OBJECTS =

bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/src/main.c.obj
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/src/image.c.obj
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/src/utils.c.obj
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/src/bmp.c.obj
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/build.make
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/linklibs.rsp
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/objects1.rsp
bmp_image_rotation.exe: CMakeFiles/bmp_image_rotation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable bmp_image_rotation.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bmp_image_rotation.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bmp_image_rotation.dir/build: bmp_image_rotation.exe

.PHONY : CMakeFiles/bmp_image_rotation.dir/build

CMakeFiles/bmp_image_rotation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bmp_image_rotation.dir\cmake_clean.cmake
.PHONY : CMakeFiles/bmp_image_rotation.dir/clean

CMakeFiles/bmp_image_rotation.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Clabs\bmp-image-rotation D:\Clabs\bmp-image-rotation D:\Clabs\bmp-image-rotation\cmake-build-debug D:\Clabs\bmp-image-rotation\cmake-build-debug D:\Clabs\bmp-image-rotation\cmake-build-debug\CMakeFiles\bmp_image_rotation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bmp_image_rotation.dir/depend

