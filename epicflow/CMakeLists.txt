project(epicflow)
set (TARGET "epicflow")

cmake_minimum_required(VERSION 2.8)

set (CMAKE_CXX_STANDARD 11)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_VERBOSE_MAKEFILE ON)

#set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
#message(STATUS "CMAKE_MODULE_PATH = ${CMAKE_MODULE_PATH}")
#message(STATUS "OpenCV_INCLUDE_DIRS = ${OpenCV_INCLUDE_DIRS}")

# find_package(OpenCV)

# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/common)

# include_directories(${OpenCV_INCLUDE_DIRS})

# file(GLOB_RECURSE SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp 
#                        ${CMAKE_CURRENT_SOURCE_DIR}/common/*.cpp)
# file(GLOB_RECURSE INCS ${CMAKE_CURRENT_SOURCE_DIR}/common/*.hpp
#                        ${CMAKE_CURRENT_SOURCE_DIR}/common/*.h)

add_definitions(-DPNG_SKIP_SETJMP_CHECK -DFINTEGER=int -fPIC -Wall -O3 -msse4)

file(GLOB SRCS  ${CMAKE_SOURCE_DIR}/*.cpp 
                ${CMAKE_SOURCE_DIR}/*.c)
file(GLOB INCS  ${CMAKE_SOURCE_DIR}/*.h)                      

message(${SRCS})

add_executable(${TARGET} ${INCS} ${SRCS})

# target_link_libraries(${TARGET} -l:libOpenCL.so.1 ${OpenCV_LIBS})
target_link_libraries(${TARGET} -ljpeg -lpng -llapack)
