   
REM run as Administrator
@echo off
cd /d %~dp0
@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM SET PATH=^
@REM %DOWNLOAD_DIR%\PortableGit\bin;^
@REM %DOWNLOAD_DIR%\nasm-2.15.05;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\bin;^
@REM %DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;^


set PATH=^
D:\Softwares\PortableGit-2.35.1.2-64-bit\bin;^
D:\Softwares\nasm-2.15.05;^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;


@REM :rebuild_and_startapp
@REM cmake.exe -G"MinGW Makefiles" -DCMAKE_ASM_NASM_COMPILER="%DOWNLOAD_DIR_LINUX%/nasm-2.15.05/nasm.exe" -DCMAKE_CXX_COMPILER="%DOWNLOAD_DIR_LINUX%/LLVM-13.0.0-win64/bin/clang++.exe" -DCMAKE_C_COMPILER="%DOWNLOAD_DIR_LINUX%/LLVM-13.0.0-win64/bin/clang.exe" -B./build
@REM cd build
@REM mingw32-make.exe
@REM cd ..
@REM pause
@REM GOTO rebuild_and_startapp
@REM pause

@REM cmake.exe -G"MinGW Makefiles" -DCMAKE_ASM_NASM_COMPILER="%DOWNLOAD_DIR_LINUX%/nasm-2.15.05/nasm.exe" -DCMAKE_BUILD_TYPE=Debug -B./build &&^
@REM cd build &&^
@REM cmake --build . &&^
@REM echo "Successful build"
@REM pause


cmake.exe -G"MinGW Makefiles" -DCMAKE_ASM_NASM_COMPILER="D:/Softwares/nasm-2.15.05/nasm.exe" -DCMAKE_BUILD_TYPE=Debug -B./build &&^
cd build &&^
cmake --build . &&^
echo "Successful build"
pause
