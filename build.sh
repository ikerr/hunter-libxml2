#!/bin/sh
set -e
mkdir -p build
pushd build
cmake \
  -DCMAKE_TOOLCHAIN_FILE=`pwd`/../cmake/toolchain.cmake \
  -DCMAKE_MODULE_PATH=`pwd`/../cmake \
  ..
make
popd
