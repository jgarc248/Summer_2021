cmake_minimum_required(VERSION 3.1.0)
project(measure_walk)

include_directories(include)

link_directories(lib)

add_compile_options(-std=c++11)

set(EXTRA_LIBS -pthread libunitree_legged_sdk_arm32.so lcm)

set(CMAKE_CXX_FLAGS "-O3")

# one pc one process
add_executable(${PROJECT_NAME} measure_walk.cpp)
target_link_libraries(measure_walk ${EXTRA_LIBS})


find_package(realsense2 REQUIRED)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
target_link_libraries(${PROJECT_NAME} ${realsense2_LIBRARY})


