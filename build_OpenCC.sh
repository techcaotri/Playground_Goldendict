#!/bin/bash -x
pushd .
cd OpenCC
make PREFIX=/home/tripham/Dev/Playground_Goldendict/install install -j$(($(nproc)-2)) 
popd