# t2: a better hello world (out-of-source, install)

## Build

    cd build 

    cmake -DCMAKE_INSTALL_PREFIX=/tmp/t2/usr ..

    make

    make install

## Run

    # under build directory
    ./bin/hello 

## Cleanup

    # under build directory
    ../cleanup.sh
