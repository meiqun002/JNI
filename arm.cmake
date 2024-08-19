set(CMAKE_TOOLCHAIN_FILE "arm.cmake")
SET(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
SET(CMAKE_SYSTEM_VERSION 1)

# # linuxarm
# set(tools /usr/bin)
# SET(CMAKE_C_COMPILER ${tools}/aarch64-linux-gnu-gcc)
# SET(CMAKE_CXX_COMPILER ${tools}/aarch64-linux-gnu-g++)
# SET(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)

# #win下arm
include(CMakeForceCompiler)
set(tools D:/env/win-cross-compiler/win-cross-compiler/gcc-7.5/bin)
SET(CMAKE_CXX_COMPILER ${tools}/aarch64-linux-gnu-g++.exe)
SET(CMAKE_C_COMPILER ${tools}/aarch64-linux-gnu-gcc.exe)
SET(CMAKE_FIND_ROOT_PATH D:/env/win-cross-compiler/win-cross-compiler/gcc-7.5/aarch64-linux-gnu/libc)



SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")
SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")
SET(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")

# Search for programs only in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)

# Search for libraries and headers only in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)

SET(CMAKE_ARM_COMPILATION 1)

#linux编译时候加上参数   -D CMAKE_TOOLCHAIN_FILE=../arm.cmake ..
# win下编译时加上参数 cmake -G "Unix Makefiles" -D CMAKE_TOOLCHAIN_FILE=../arm.cmake ..