#execute the program
EXE=reduction
ldd ./reduction | grep -i asan
K=1024*1024*4
for i in {1..8}
do
    echo LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./$EXE $K
    LD_PRELOAD=$(/opt/rocm/llvm/bin/clang -print-file-name=libclang_rt.asan-x86_64.so) ./$EXE $K
    K=$(($K*2))
done

