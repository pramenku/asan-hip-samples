#execute the program
EXE=reduction
ldd ./reduction | grep -i asan
K=1024*1024*4
for i in {1..8}
do
    echo ./$EXE $K
    ./$EXE $K
    K=$(($K*2))
done

