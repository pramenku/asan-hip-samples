#!/bin/bash


export HSA_XNACK=1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/llvm/lib/clang/17.0.0/lib/linux
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/rocm/lib/asan
export ASAN_SYMBOLIZER_PATH=/opt/rocm/llvm/bin/llvm-symbolizer
export PATH=/opt/rocm/llvm/bin:$PATH

echo
echo "==== 0_Intro/bit_extract ====" 2>&1 | tee hip-samples.log
cd 0_Intro/bit_extract
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
#./bit_extract 2>&1 | tee -a hip-samples.log
ldd ./bit_extract | grep -i asan 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "============0_Intro/module_api=============" 2>&1 | tee -a hip-samples.log
cd 0_Intro/module_api
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./runKernel.hip.out 2>&1 | tee -a hip-samples.log
./defaultDriver.hip.out 2>&1 | tee -a hip-samples.log
./launchKernelHcc.hip.out 2>&1 | tee -a hip-samples.log
ldd ./runKernel.hip.out | grep -i asan 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "================0_Intro/module_api_global===============" 2>&1 | tee -a hip-samples.log
cd 0_Intro/module_api_global
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./runKernel.hip.out 2>&1 | tee -a hip-samples.log
ldd ./runKernel.hip.out | grep -i asan 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "================0_Intro/square=============" 2>&1 | tee -a hip-samples.log
cd 0_Intro/square
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./square 2>&1 | tee -a hip-samples.log
ldd ./square | grep -i asan 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "=============1_Utils/hipDispatchLatency" 2>&1 | tee -a hip-samples.log
cd 1_Utils/hipDispatchLatency
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./hipDispatchLatency  2>&1 | tee -a hip-samples.log
ldd ./hipDispatchLatency | grep -i asan  2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "=============1_Utils/hipInfo========" 2>&1 | tee -a hip-samples.log
cd 1_Utils/hipInfo
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./hipInfo 2>&1 | tee -a hip-samples.log
ldd ./hipInfo 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "=============2_Cookbook/0_MatrixTranspose=============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/0_MatrixTranspose
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
#./MatrixTranspose 2>&1 | tee -a hip-samples.log
ldd ./MatrixTranspose 2>&1 | tee -a hip-samples.log
cd ../../../

echo 
echo "=============2_Cookbook/1_hipEvent==============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/1_hipEvent
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
#./hipEvent 2>&1 | tee -a hip-samples.log
ldd ./hipEvent 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "================2_Cookbook/3_shared_memory============" 2>$1 | tee -a hip-samples.log
cd 2_Cookbook/3_shared_memory
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./sharedMemory 2>&1 | tee -a hip-samples.log
ldd ./sharedMemory 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "=====================2_Cookbook/4_shfl===========" 2>$1 | tee -a hip-samples.log
cd 2_Cookbook/4_shfl
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./shfl 2>&1 | tee -a hip-samples.log
ldd ./shfl 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "======================2_Cookbook/5_2dshfl==========" 2>$1 | tee -a hip-samples.log
cd 2_Cookbook/5_2dshfl
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./2dshfl 2>&1 | tee -a hip-samples.log
ldd ./2dshfl 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "=================2_Cookbook/6_dynamic_shared============" 2>$1 | tee -a hip-samples.log
cd 2_Cookbook/6_dynamic_shared
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./dynamic_shared 2>&1 | tee -a hip-samples.log
ldd ./dynamic_shared 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "===================2_Cookbook/7_streams================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/7_streams
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./stream  2>&1 | tee -a hip-samples.log
ldd ./stream  2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "=================2_Cookbook/8_peer2peer================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/8_peer2peer
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./peer2peer 2>&1 | tee -a hip-samples.log
ldd ./peer2peer 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "=====================2_Cookbook/9_unroll===============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/9_unroll
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./unroll 2>&1 | tee -a hip-samples.log
ldd ./unroll 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "=====================2_Cookbook/10_inline_asm============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/10_inline_asm
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
#./inline_asm 2>&1 | tee -a hip-samples.log
ldd ./inline_asm 2>&1 | tee -a hip-samples.log
cd ../../../


echo
echo "===================2_Cookbook/11_texture_driver===============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/11_texture_driver
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./texture2dDrv 2>&1 | tee -a hip-samples.log
ldd ./texture2dDrv 2>&1 | tee -a hip-samples.log
cd ../../../

echo 
echo "==============2_Cookbook/12_cmake_hip_add_executable=================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/12_cmake_hip_add_executable
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./cmake_hip_add_executable 2>&1 | tee -a hip-samples.log
ldd ./cmake_hip_add_executable 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "================2_Cookbook/13_occupancy=============="  2>&1 | tee -a hip-samples.log
cd 2_Cookbook/13_occupancy
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
#./occupancy 2>&1 | tee -a hip-samples.log
ldd ./occupancy 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "================2_Cookbook/14_gpu_arch, Applicable for gfx908 only===================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/14_gpu_arch
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./gpuarch 2>&1 | tee -a hip-samples.log
ldd ./gpuarch 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "====================2_Cookbook/15_static_library/device_functions=============="  2>&1 | tee -a hip-samples.log
cd 2_Cookbook/15_static_library/device_functions
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./test_device_static 2>&1 | tee -a hip-samples.log
ldd ./test_device_static 2>&1 | tee -a hip-samples.log
cd ../../../../

echo
echo "==================2_Cookbook/15_static_library/host_functions=============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/15_static_library/host_functions
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./test_opt_static 2>&1 | tee -a hip-samples.log
ldd ./test_opt_static 2>&1 | tee -a hip-samples.log
cd ../../../../

echo
echo "===================2_Cookbook/16_assembly_to_executable====================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/16_assembly_to_executable
make clean
make 2>&1 | tee -a hip-samples.log
./square_asm.out 2>&1 | tee -a hip-samples.log
ldd ./square_asm.out 2>&1 | tee -a hip-samples.log
cd ../../

echo
echo "==============================2_Cookbook/17_llvm_ir_to_executable=============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/17_llvm_ir_to_executable
make clean
make 2>&1 | tee -a hip-samples.log 
./square_ir.out 2>&1 | tee -a hip-samples.log
ldd ./square_ir.out 2>&1 | tee -a hip-samples.log
cd ../../

echo
echo "=======================2_Cookbook/18_cmake_hip_device================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/18_cmake_hip_device
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./test_cpp 2>&1 | tee -a hip-samples.log
ldd ./test_cpp 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "===================2_Cookbook/19_cmake_lang, need cmake >3.18===============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/19_cmake_lang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./cmake_lang 2>&1 | tee -a hip-samples.log
ldd ./cmake_lang 2>&1 | tee -a hip-samples.log
cd ../../../ 

echo
echo "===================2_Cookbook/20_hip_vulkan,need VULKAN_PATH===============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/20_hip_vulkan
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./hip_vulkan 2>&1 | tee -a hip-samples.log
ldd ./hip_vulkan 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "=================2_Cookbook/21_cmake_hip_cxx_clang, need cmake >3.21===============" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/21_cmake_hip_cxx_clang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./cmake_hip_cxx_clang 2>&1 | tee -a hip-samples.log
ldd ./cmake_hip_cxx_clang 2>&1 | tee -a hip-samples.log
cd ../../../

echo
echo "==================2_Cookbook/22_cmake_hip_lang, need cmake >3.21=======================" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/22_cmake_hip_lang
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./cmake_hip_lang 2>&1 | tee -a hip-samples.log
ldd ./cmake_hip_lang 2>&1 | tee -a hip-samples.log
cd ../../../


echo 
echo "=================2_Cookbook/23_cmake_hiprtc===========" 2>&1 | tee -a hip-samples.log
cd 2_Cookbook/23_cmake_hiprtc
rm -rf build && mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_C_COMPILER=/opt/rocm/llvm/bin/clang -DCMAKE_PREFIX_PATH=/opt/rocm .. 2>&1 | tee -a hip-samples.log
make 2>&1 | tee -a hip-samples.log
./cmake_hiprtc 2>&1 | tee -a hip-samples.log
ldd ./cmake_hiprtc 2>&1 | tee -a hip-samples.log
cd ../../../










