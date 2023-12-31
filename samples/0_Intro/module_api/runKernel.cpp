/*
Copyright (c) 2015 - 2021 Advanced Micro Devices, Inc. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#include "hip/hip_runtime.h"
#include "hip/hip_runtime_api.h"
#include <iostream>
#include <fstream>
#include <vector>
#include <hip/hip_hcc.h>
#include "hip_helper.h"

#define LEN 64
#define SIZE LEN << 2

#define fileName "vcpy_kernel.code"
#define kernel_name "hello_world"

int main() {
    float *A, *B;
    hipDeviceptr_t Ad, Bd;
    A = new float[LEN];
    B = new float[LEN];

    for (uint32_t i = 0; i < LEN; i++) {
        A[i] = i * 1.0f;
        B[i] = 0.0f;
    }

    hipInit(0);
    hipDevice_t device;
    hipCtx_t context;
    checkHipErrors(hipDeviceGet(&device, 0));
    checkHipErrors(hipCtxCreate(&context, 0, device));

    checkHipErrors(hipMalloc((void**)&Ad, SIZE));
    checkHipErrors(hipMalloc((void**)&Bd, SIZE));

    checkHipErrors(hipMemcpyHtoD(Ad, A, SIZE));
    checkHipErrors(hipMemcpyHtoD(Bd, B, SIZE));
    hipModule_t Module;
    hipFunction_t Function;
    checkHipErrors(hipModuleLoad(&Module, fileName));
    checkHipErrors(hipModuleGetFunction(&Function, Module, kernel_name));

    struct {
        void* _Ad;
        void* _Bd;
    } args;

    args._Ad = (void*) Ad;
    args._Bd = (void*) Bd;

    size_t size = sizeof(args);

    void* config[] = {HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, HIP_LAUNCH_PARAM_BUFFER_SIZE, &size,
                      HIP_LAUNCH_PARAM_END};

    checkHipErrors(hipModuleLaunchKernel(Function, 1, 1, 1, LEN, 1, 1, 0, 0, NULL, (void**)&config));

    checkHipErrors(hipMemcpyDtoH(B, Bd, SIZE));

    int mismatchCount = 0;
    for (uint32_t i = 0; i < LEN; i++) {
        if (A[i] != B[i]) {
            mismatchCount++;
            std::cout << "error: mismatch " << A[i] << " != " << B[i] << std::endl;
        }
    }

    if (mismatchCount == 0) {
        std::cout << "PASSED!\n";
    } else {
        std::cout << "FAILED!\n";
    };

    checkHipErrors(hipFree(Ad));
    hipFree(Bd);
    delete[] A;
    delete[] B;
    checkHipErrors(hipCtxDestroy(context));
    return 0;
}
