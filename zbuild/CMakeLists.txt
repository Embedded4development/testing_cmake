CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(DIR_SRC ../src/)

FILE(GLOB SRC_FILES ${DIR_SRC}/*.c ${DIR_SRC}/*.cpp ${DIR_SRC}/*.h)

#INCLUDE(${DIR_SRC}/common.cmake)
INCLUDE_DIRECTORIES(../include/cairo/)
LINK_DIRECTORIES(../lib/)
add_executable(Stl_test ${SRC_FILES})
target_link_libraries (Stl_test LINK_PUBLIC cairo)
