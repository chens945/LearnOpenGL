# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Git

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Git\cmake_build

# Include any dependencies generated for this target.
include CMakeFiles\opengl.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\opengl.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\opengl.dir\flags.make

CMakeFiles\opengl.dir\src\main.cpp.obj: CMakeFiles\opengl.dir\flags.make
CMakeFiles\opengl.dir\src\main.cpp.obj: ..\src\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Git\cmake_build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opengl.dir/src/main.cpp.obj"
	D:\PROGRA~1\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\opengl.dir\src\main.cpp.obj /FdCMakeFiles\opengl.dir\ /FS -c F:\Git\src\main.cpp
<<

CMakeFiles\opengl.dir\src\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl.dir/src/main.cpp.i"
	D:\PROGRA~1\MICROS~2.0\VC\bin\cl.exe > CMakeFiles\opengl.dir\src\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Git\src\main.cpp
<<

CMakeFiles\opengl.dir\src\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl.dir/src/main.cpp.s"
	D:\PROGRA~1\MICROS~2.0\VC\bin\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\opengl.dir\src\main.cpp.s /c F:\Git\src\main.cpp
<<

CMakeFiles\opengl.dir\src\main.cpp.obj.requires:

.PHONY : CMakeFiles\opengl.dir\src\main.cpp.obj.requires

CMakeFiles\opengl.dir\src\main.cpp.obj.provides: CMakeFiles\opengl.dir\src\main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\opengl.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\opengl.dir\src\main.cpp.obj.provides.build
.PHONY : CMakeFiles\opengl.dir\src\main.cpp.obj.provides

CMakeFiles\opengl.dir\src\main.cpp.obj.provides.build: CMakeFiles\opengl.dir\src\main.cpp.obj


# Object files for target opengl
opengl_OBJECTS = \
"CMakeFiles\opengl.dir\src\main.cpp.obj"

# External object files for target opengl
opengl_EXTERNAL_OBJECTS =

opengl.exe: CMakeFiles\opengl.dir\src\main.cpp.obj
opengl.exe: CMakeFiles\opengl.dir\build.make
opengl.exe: CMakeFiles\opengl.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\Git\cmake_build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable opengl.exe"
	"D:\Program Files\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\opengl.dir --manifests  -- D:\PROGRA~1\MICROS~2.0\VC\bin\link.exe /nologo @CMakeFiles\opengl.dir\objects1.rsp @<<
 /out:opengl.exe /implib:opengl.lib /pdb:F:\Git\cmake_build\opengl.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  -LIBPATH:F:\Git\3rdLib\lib opengl32.lib glfw3.lib SOIL.lib glew32sd.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\opengl.dir\build: opengl.exe

.PHONY : CMakeFiles\opengl.dir\build

CMakeFiles\opengl.dir\requires: CMakeFiles\opengl.dir\src\main.cpp.obj.requires

.PHONY : CMakeFiles\opengl.dir\requires

CMakeFiles\opengl.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\opengl.dir\cmake_clean.cmake
.PHONY : CMakeFiles\opengl.dir\clean

CMakeFiles\opengl.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" F:\Git F:\Git F:\Git\cmake_build F:\Git\cmake_build F:\Git\cmake_build\CMakeFiles\opengl.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\opengl.dir\depend

