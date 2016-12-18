#!/bin/bash

if [ ! -d opencv-3.1.0 ]
then
if [ ! -f 3.1.0.zip ]
then
    wget https://github.com/Itseez/opencv/archive/3.1.0.zip
fi
unzip 3.1.0.zip
fi

export BUILD_SHARED_LIBS=OFF
export BUILD_opencv_apps=OFF
export WITH_OPENCL=OFF
export WITH_CUDA=OFF
export BUILD_TESTS=OFF
export BUILD_DOCS=OFF
export BUILD_PACKAGE=OFF
export BUILD_PERF_TESTS=OFF
export WITH_CUFFT=OFF
export WITH_GSTREAMER=OFF

cd opencv-3.1.0
cmake .
make
make install
