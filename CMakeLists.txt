cmake_minimum_required(VERSION 3.24)
include(${CMAKE_SOURCE_DIR}/environment.cmake)

set(PROJECT_NAME Hello)
project(${PROJECT_NAME} CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(${CMAKE_SOURCE_DIR}/compilerOptions.cmake)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE CompilerOptions)
