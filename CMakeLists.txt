cmake_minimum_required(VERSION 3.17)
project(bmp_image_rotation C)

set(CMAKE_C_STANDARD 11)

add_executable(bmp_image_rotation src/main.c src/image.c include/bmp.h src/utils.c src/bmp.c include/image.h)