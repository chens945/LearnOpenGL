F:
set TOPDIR=F:\Git
set INSTALL_DIR=%TOPDIR%\Debug
cd %TOPDIR%
IF EXIST cmake_build (
	del /f /s /q cmake_build 1>nul
	rmdir /s /q cmake_build
)

IF EXIST Debug (
	del /f /s /q Debug 1>nul
	rmdir /s /q Debug 
)
mkdir Debug 
mkdir cmake_build
cd cmake_build
cmake .. -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX="%INSTALL_DIR%"
nmake -s -DGLEW_STATIC
nmake install
@echo build success
pause