#include "JNIDemo.h"
#include <iostream>

JNIEXPORT jint JNICALL Java_JNIDemo_add(JNIEnv *, jclass, jint a, jint b)
{
    std::cout << "a = " << a << std::endl;
    std::cout << "b = " << b << std::endl;
    std::cout << "a = " << a << std::endl;
    std::cout << "Hello JNI!"  << std::endl;
    return a + b;
}
// 先写java代码
// javac -h ./ JNIDemo.java
// g++ -o jnidemo.dll -fPIC -shared -I"D:\\env\\jdk\\jdk17.0\\include\\win32" -I"D:\\env\\jdk\\jdk17.0\\include" JNIDemo.cpp
// g++ -o jnidemo.dll -fPIC -shared -I"D:\\soft\\minGW64\\x86_64-13.2.0-release-win32-seh-msvcrt-rt_v11-rev1\\mingw64\\include" -I"D:\\env\\jdk\\jdk17.0\\include" JNIDemo.cpp
