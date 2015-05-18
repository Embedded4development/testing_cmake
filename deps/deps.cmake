
INCLUDE_DIRECTORIES(/usr/include/)
LINK_DIRECTORIES(/usr/lib/)
LINK_LIBRARIES(pthread)

#set toolchain path
SET(DIR_TOOLCHAIN_PATH /home/radix/Ripdraw/build/buildroot/output/host/usr)

#if compiler exist then set c,cxx,asm compiler
IF(EXISTS "${DIR_TOOLCHAIN_PATH}/bin/arm-linux-gnueabihf-gcc")
		MESSAGE(cross compiling)
		SET(CMAKE_ASM_COMPILER "${DIR_TOOLCHAIN_PATH}/bin/arm-linux-gnueabihf-gcc")
		SET(CMAKE_C_COMPILER   "${DIR_TOOLCHAIN_PATH}/bin/arm-linux-gnueabihf-gcc")
		SET(CMAKE_CXX_COMPILER "${DIR_TOOLCHAIN_PATH}/bin/arm-linux-gnueabihf-g++")
		#SET(RA_ARM_OPT_FLAGS "-pipe -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 -mfpu=neon -ftree-vectorize -ffast-math -mno-thumb-interwork -mabi=aapcs-linux -mfloat-abi=hard")
ENDIF()
