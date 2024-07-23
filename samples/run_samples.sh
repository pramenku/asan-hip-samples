#!/bin/bash


export HSA_XNACK=1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib/llvm/lib/clang/18/lib/linux
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib/asan
export ASAN_SYMBOLIZER_PATH=/opt/rocm/llvm/bin/llvm-symbolizer
export PATH=/opt/rocm/llvm/bin:$PATH

echo
echo "==== 0_Intro/bit_extract ====" 
cd 0_Intro/bit_extract
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
#./bit_extract 
ldd ./bit_extract | grep -i asan 
cd ../../../

echo
echo "============0_Intro/module_api=============" 
cd 0_Intro/module_api
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./runKernel.hip.out 
./defaultDriver.hip.out 
./launchKernelHcc.hip.out 
ldd ./runKernel.hip.out | grep -i asan 
cd ../../../


echo
echo "================0_Intro/module_api_global===============" 
cd 0_Intro/module_api_global
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./runKernel.hip.out 
ldd ./runKernel.hip.out | grep -i asan 
cd ../../../

echo
echo "================0_Intro/square=============" 
cd 0_Intro/square
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./square 
ldd ./square | grep -i asan 
cd ../../../


echo
echo "=============1_Utils/hipDispatchLatency" 
cd 1_Utils/hipDispatchLatency
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./hipDispatchLatency  
ldd ./hipDispatchLatency | grep -i asan  
cd ../../../


echo
echo "=============1_Utils/hipInfo========" 
cd 1_Utils/hipInfo
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./hipInfo 
ldd ./hipInfo 
cd ../../../


echo
echo "=============2_Cookbook/0_MatrixTranspose=============" 
cd 2_Cookbook/0_MatrixTranspose
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
#./MatrixTranspose 
ldd ./MatrixTranspose 
cd ../../../

echo 
echo "=============2_Cookbook/1_hipEvent==============" 
cd 2_Cookbook/1_hipEvent
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
#./hipEvent 
ldd ./hipEvent 
cd ../../../


echo
echo "================2_Cookbook/3_shared_memory============" 
cd 2_Cookbook/3_shared_memory
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./sharedMemory 
ldd ./sharedMemory 
cd ../../../


echo
echo "=====================2_Cookbook/4_shfl===========" 
cd 2_Cookbook/4_shfl
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./shfl 
ldd ./shfl 
cd ../../../

echo
echo "======================2_Cookbook/5_2dshfl==========" 
cd 2_Cookbook/5_2dshfl
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./2dshfl 
ldd ./2dshfl 
cd ../../../

echo
echo "=================2_Cookbook/6_dynamic_shared============" 
cd 2_Cookbook/6_dynamic_shared
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./dynamic_shared 
ldd ./dynamic_shared 
cd ../../../

echo
echo "===================2_Cookbook/7_streams================" 
cd 2_Cookbook/7_streams
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./stream  
ldd ./stream  
cd ../../../


echo
echo "=================2_Cookbook/8_peer2peer================" 
cd 2_Cookbook/8_peer2peer
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./peer2peer 
ldd ./peer2peer 
cd ../../../

echo
echo "=====================2_Cookbook/9_unroll===============" 
cd 2_Cookbook/9_unroll
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./unroll 
ldd ./unroll 
cd ../../../

echo
echo "=====================2_Cookbook/10_inline_asm============" 
cd 2_Cookbook/10_inline_asm
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
#./inline_asm 
ldd ./inline_asm 
cd ../../../


echo
echo "===================2_Cookbook/11_texture_driver===============" 
cd 2_Cookbook/11_texture_driver
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./texture2dDrv 
ldd ./texture2dDrv 
cd ../../../

echo 
echo "==============2_Cookbook/12_cmake_hip_add_executable=================" 
cd 2_Cookbook/12_cmake_hip_add_executable
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./cmake_hip_add_executable 
ldd ./cmake_hip_add_executable 
cd ../../../

echo
echo "================2_Cookbook/13_occupancy=============="  
cd 2_Cookbook/13_occupancy
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
#./occupancy 
ldd ./occupancy 
cd ../../../

echo
echo "================2_Cookbook/14_gpu_arch, Applicable for gfx908 only===================" 
cd 2_Cookbook/14_gpu_arch
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./gpuarch 
ldd ./gpuarch 
cd ../../../

echo
echo "====================2_Cookbook/15_static_library/device_functions=============="  
cd 2_Cookbook/15_static_library/device_functions
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./test_device_static 
ldd ./test_device_static 
cd ../../../../

echo
echo "==================2_Cookbook/15_static_library/host_functions=============" 
cd 2_Cookbook/15_static_library/host_functions
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./test_opt_static 
ldd ./test_opt_static 
cd ../../../../

echo
echo "===================2_Cookbook/16_assembly_to_executable====================" 
cd 2_Cookbook/16_assembly_to_executable
make clean
make 
./square_asm.out 
ldd ./square_asm.out 
cd ../../

echo
echo "==============================2_Cookbook/17_llvm_ir_to_executable=============" 
cd 2_Cookbook/17_llvm_ir_to_executable
make clean
make  
./square_ir.out 
ldd ./square_ir.out 
cd ../../

echo
echo "=======================2_Cookbook/18_cmake_hip_device================" 
cd 2_Cookbook/18_cmake_hip_device
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./test_cpp 
ldd ./test_cpp 
cd ../../../

echo
echo "===================2_Cookbook/19_cmake_lang, need cmake >3.18===============" 
cd 2_Cookbook/19_cmake_lang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./cmake_lang 
ldd ./cmake_lang 
cd ../../../ 

echo
echo "===================2_Cookbook/20_hip_vulkan,need VULKAN_PATH===============" 
cd 2_Cookbook/20_hip_vulkan
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./hip_vulkan 
ldd ./hip_vulkan 
cd ../../../

echo
echo "=================2_Cookbook/21_cmake_hip_cxx_clang, need cmake >3.21===============" 
cd 2_Cookbook/21_cmake_hip_cxx_clang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./cmake_hip_cxx_clang 
ldd ./cmake_hip_cxx_clang 
cd ../../../

echo
echo "==================2_Cookbook/22_cmake_hip_lang, need cmake >3.21=======================" 
cd 2_Cookbook/22_cmake_hip_lang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./cmake_hip_lang 
ldd ./cmake_hip_lang 
cd ../../../


echo 
echo "=================2_Cookbook/23_cmake_hiprtc===========" 
cd 2_Cookbook/23_cmake_hiprtc
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 
make 
./cmake_hiprtc 
ldd ./cmake_hiprtc 
cd ../../../



