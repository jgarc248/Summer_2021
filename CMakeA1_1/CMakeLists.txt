cmake_minimum_required(VERSION 2.8.3)
project(example_walk)

include_directories(include)

link_directories(lib)

add_compile_options(-std=c++11)

set(EXTRA_LIBS -pthread libunitree_legged_sdk_arm32.so lcm)

set(CMAKE_CXX_FLAGS "-O3")

# one pc one process
add_executable(${PROJECT_NAME} example_walk.cpp)
target_link_libraries(example_walk ${EXTRA_LIBS})


