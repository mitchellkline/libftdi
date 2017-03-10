set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 21)
set(CMAKE_ANDROID_ARCH_ABI armeabi-v7a)
set(CMAKE_ANDROID_ARM_NEON ON)
set(CMAKE_ANDROID_ARM_MODE ON)
# Change this path to point to ndk installation location
set(CMAKE_ANDROID_NDK /opt/android/ndk/android-ndk-r14)
set(CMAKE_ANDROID_STL_TYPE none)

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
SET(CMAKE_FIND_ROOT_PATH /home/mkline/armeabi-v7a-inst)

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
