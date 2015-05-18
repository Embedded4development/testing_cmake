CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(DIR_SRC ../src)

FILE(GLOB SRC_FILES ${DIR_SRC}/*)
SET(DEPS_PATH ${DIR_SRC}/../deps)

INCLUDE(${DEPS_PATH}/deps.cmake)

add_executable(Stl_test ${SRC_FILES})

