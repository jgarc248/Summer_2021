cmake_minimum_required(VERSION 2.8)
project( opencv1 )
find_package( OpenCV REQUIRED )
# Find librealsense2 installed package
find_package(realsense2 REQUIRED)
set(DEPENDENCIES realsense2 ${OpenCV_LIBS})

include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( opencv1 opencv1.cpp )
target_link_libraries( opencv1 ${OpenCV_LIBS} )
# Link librealsense2 to the target
target_link_libraries(${PROJECT_NAME} ${realsense2_LIBRARY})
