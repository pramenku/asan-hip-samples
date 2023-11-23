#!/bin/bash

if [ -z  "$HIP_PATH" ]
then

if [ -d /opt/rocm/hip ]
then
    HIP_PATH=/opt/rocm/hip
else
    HIP_PATH=/opt/rocm
fi

fi

if [ -f "rtm8_hip" ]
then
    rm rtm8_hip
fi

echo "hipcc -fsanitize=address --offload-arch=gfx90a:xnack+ -shared-libasan -std=c++11 -O3 -o rtm8_hip rtm8.cpp"
$HIP_PATH/bin/hipcc -fsanitize=address -shared-libasan --offload-arch=gfx90a:xnack+ -std=c++11 -O3 -o rtm8_hip rtm8.cpp

