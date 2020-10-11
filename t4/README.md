# t4: use external shared library and header file

## Build

    # make sure t3 is built and installed to /tmp/t3/usr

    cd build 

    cmake ..

    make

## Cleanup

    # under build directory
    ../cleanup.sh

## Run

    # under build directory
    ./bin/main 

## Note

Command LINK_DIRECTORIES is rarely necessary and should be avoided where there are other choices. Prefer to pass full absolute paths to libraries where possible, since this ensures the correct library will always be linked. The find_library() command provides the full path, which can generally be used directly in calls to target_link_libraries().
