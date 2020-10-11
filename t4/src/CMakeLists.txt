CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

ADD_SUBDIRECTORY(sub)

SET(SRC_LIST main.c)
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

INCLUDE_DIRECTORIES(/tmp/t3/usr/include/hello)
FIND_LIBRARY(LIBHELLO NAMES hello PATHS /tmp/t3/usr/lib)

ADD_EXECUTABLE(main ${SRC_LIST})

TARGET_LINK_LIBRARIES(main ${LIBHELLO} sub) # target_link_libraries can link a full path to a library file (${LIBHELLO}) and a library target name (sub)
