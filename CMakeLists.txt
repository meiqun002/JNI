cmake_minimum_required(VERSION 3.12)
project(helloWorld VERSION 1.0.0)

# 查找 JNI 并设置 JNI 路径
find_package(JNI REQUIRED)
include_directories(${JNI_INCLUDE_DIRS})

# 检测操作系统并设置相应的 JNI 路径和工具链
if (WIN32)
    # Windows 环境
    include_directories("D:/env/jdk/jdk17.0/include")
    include_directories("D:/env/jdk/jdk17.0/include/win32")
elseif (UNIX)
    # Linux 环境，使用交叉编译工具链
    set(CMAKE_SYSTEM_NAME Linux)
    set(CMAKE_SYSTEM_PROCESSOR aarch64)  # 目标架构

    # 指定交叉编译工具链
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)

    # 指定输出位置
    # set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

    # 设置 JNI 头文件路径
    # include_directories("/usr/lib/jvm/java-17-openjdk-arm64/include")
    # include_directories("/usr/lib/jvm/java-17-openjdk-arm64/include/linux")
    include_directories("/usr/lib/jvm/temurin-11-jdk-amd64/include")
    include_directories("/usr/lib/jvm/temurin-11-jdk-amd64/include/linux")
endif()

# add_executable(main JNIDemo.cpp)

# 添加源文件并生成共享库
add_library(JNIDemo SHARED JNIDemo.cpp)