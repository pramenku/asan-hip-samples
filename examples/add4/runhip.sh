ldd ././gpu-stream-hip | grep -i asan
echo ./gpu-stream-hip
LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./gpu-stream-hip
echo ./gpu-stream-hip --groups 256 --groupSize 256
LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./gpu-stream-hip --groups 256 --groupSize 256
echo ./gpu-stream-hip --float
LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./gpu-stream-hip --float
echo ./gpu-stream-hip --float --groups 256 --groupSize 256
LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./gpu-stream-hip --float --groups 256 --groupSize 256
