set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 28)
set(CMAKE_ANDROID_ARCH_ABI arm64-v8a)

# Seems we don't need the following two with arm64-v8a, only armeabi-v7a
#set(CMAKE_ANDROID_ARM_NEON ON)
#set(CMAKE_ANDROID_ARM_MODE ON)

# Change this path to point to ndk installation location
set(CMAKE_ANDROID_NDK /Users/soliax/Documents/android/android-ndk) 
set(CMAKE_ANDROID_STL_TYPE c++_static)

# Change this path to point to armeabi-v7a libusb-1.0.so location
# We also expect to find libusb.h here.
# armeabi-v7a
#   usr
#     include
#       libusb-1.0
#         libusb.h
#     lib
#       libusb-1.0.so
# NOTE: This is a special flavor of libusb. See README for details
SET(CMAKE_FIND_ROOT_PATH /Users/soliax/MMI/codeiMac/libftdi/libusb-android/arm64-v8a)

# Running cmake then make yielding this effort:
# android-ndk/toolchains/llvm/prebuilt/darwin-x86_64/bin/../lib/gcc/aarch64-linux-android/4.9.x/../../../../aarch64-linux-android/bin/ld: warning: liblog.so, needed by /libftdi/libusb-android/arm64-v8a/usr/lib/libusb-1.0.so, not found (try using -rpath or -rpath-link)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fuse-ld=gold")

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
