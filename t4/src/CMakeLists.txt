CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

ADD_SUBDIRECTORY(sub)

SET(SRC_LIST main.c)
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

ADD_EXECUTABLE(main ${SRC_LIST})

INCLUDE_DIRECTORIES(/tmp/t3/usr/include/hello)
FIND_LIBRARY(LIBHELLO NAMES hello PATHS /tmp/t3/usr/lib)
# LINK_DIRECTORIES(/tmp/t3/usr/lib) # LINK_DIRECTORIES command is rarely necessary and should be avoided where there are other choices (FIND_LIBRARY)

TARGET_LINK_LIBRARIES(main ${LIBHELLO} sub) # target_link_libraries can link a full path to a library file (${LIBHELLO}) and a library target name (sub)
# if we use LINK_DIRECTORIES, here should be TARGET_LINK_LIBRARIES(main hello sub)
