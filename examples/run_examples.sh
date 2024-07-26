#!/bin/bash


export HSA_XNACK=1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib/llvm/lib/clang/18/lib/linux
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib/asan
export ASAN_SYMBOLIZER_PATH=/opt/rocm/llvm/bin/llvm-symbolizer
export PATH=/opt/rocm/llvm/bin:$PATH



: ${HIP_PLATFORM:="hipcc"}

# vector_add
echo
echo "==== vectorAdd ===="
cd vectorAdd
make clean
make
#./vectoradd_hip.exe
ldd ./vectoradd_hip.exe | grep -i asan
cd ..

# gpu-burn
#echo
#echo "==== gpu-burn ===="
#cd gpu-burn
#make clean
#make
#./build/gpuburn-hip -t 5
#ldd ./build/gpuburn-hip | grep -i asan
#cd ..

# strided-access
echo
echo "==== strided-access ===="
cd strided-access
make clean
make
./strided-access
ldd ./strided-access | grep -i asan
cd ..


# rtm8
echo
echo "==== rtm8 ===="
cd rtm8
./build_hip.sh
./rtm8_hip
ldd ./rtm8_hip | grep -i asan
cd ..

# reduction
echo
echo "==== reduction ===="
cd reduction
make clean
make
./run.sh
cd ..

# mini-nbody
# echo
# echo "==== mini-nbody ===="
# cd mini-nbody/hip
# ./HIP-nbody-orig.sh
# ./HIP-nbody-soa.sh
# ./HIP-nbody-block.sh
# cd ../..

# add4
echo
echo "==== add4 ===="
cd add4
./buildit.sh
./runhip.sh
cd ..

# cuda-stream
echo
echo "==== cuda-stream ===="
cd cuda-stream
make clean
make
./stream
ldd ./stream | grep -i asan
cd ..

# openmp-helloworld
echo
echo "==== OpenMP Hello World ===="
cd openmp-helloworld
rm -rf build && mkdir -p build
cd build
cmake ..
make
./test_openmp_helloworld
ldd ./test_openmp_helloworld | grep -i asan
cd ../..

