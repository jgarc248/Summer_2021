cmake_minimum_required(VERSION 2.8)
project( rs-grabcuts )
find_package( OpenCV REQUIRED )
# Find librealsense2 installed package
find_package(realsense2 REQUIRED)
set(DEPENDENCIES realsense2 ${OpenCV_LIBS})

include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( rs-grabcuts rs-grabcuts.cpp ../cv-helpers.hpp)
set_property(TARGET rs-grabcuts PROPERTY CXX_STANDARD 11)
target_link_libraries(rs-grabcuts ${DEPENDENCIES})
# Link librealsense2 to the target
target_link_libraries(${PROJECT_NAME} ${realsense2_LIBRARY})


install(
	TARGETS

	rs-grabcuts

	RUNTIME DESTINATION
	${CMAKE_INSTALL_PREFIX}/bin
)
