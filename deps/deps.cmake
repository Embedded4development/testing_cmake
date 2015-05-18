get_filename_component(PATH ${DIR_SRC}/main.cpp ABSOLUTE)
INCLUDE_DIRECTORIES(${DEPS_PATH}/include/cairo/)
LINK_DIRECTORIES(${DEPS_PATH}/lib/)
LINK_LIBRARIES(cairo)
