; ModuleID = 'square_host.bc'
source_filename = "square.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z28__device_stub__vector_squareIfEvPT_S1_m = comdat any

$_Z13vector_squareIfEvPT_S1_m = comdat any

$__hip_gpubin_handle = comdat any

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"square.cpp\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: running on device %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: allocate host mem (%6.2f MB)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: allocate device mem (%6.2f MB)\0A\00", [58 x i8] zeroinitializer }, align 32
@_Z13vector_squareIfEvPT_S1_m = linkonce_odr dso_local constant ptr @_Z28__device_stub__vector_squareIfEvPT_S1_m, comdat, align 8
@stderr = external dso_local local_unnamed_addr global ptr, align 8
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"checkHipErrors() HIP API error = %04d \22%s\22 from file <%s>, line %i.\0A\00", [59 x i8] zeroinitializer }, align 32
@0 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"_Z13vector_squareIfEvPT_S1_m\00", [35 x i8] zeroinitializer }, align 32
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { { i32, i32, ptr, ptr }, [40 x i8] } { { i32, i32, ptr, ptr } { i32 1212764230, i32 1, ptr @__hip_fatbin, ptr null }, [40 x i8] zeroinitializer }, section ".hipFatBinSegment", align 32
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global ptr null, comdat, align 8
@str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: copy Host2Device\00", [41 x i8] zeroinitializer }, align 32
@str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"info: launch 'vector_square' kernel\00", [60 x i8] zeroinitializer }, align 32
@str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"info: copy Device2Host\00", [41 x i8] zeroinitializer }, align 32
@str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info: checkHipErrors result\00", [36 x i8] zeroinitializer }, align 32
@str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PASSED!\00", [24 x i8] zeroinitializer }, align 32
@__asan_option_detect_stack_use_after_return = external global i32
@___asan_gen_ = private unnamed_addr constant [204 x i8] c"11 32 8 10 C_d.addr.i 64 8 10 A_d.addr.i 96 8 8 N.addr.i 128 12 10 grid_dim.i 160 12 11 block_dim.i 192 8 12 shmem_size.i 224 8 8 stream.i 256 24 14 kernel_args1.i 320 8 3 A_d 352 8 3 C_d 384 792 5 props\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [120 x i8] c"7 32 8 8 C_d.addr 64 8 8 A_d.addr 96 8 6 N.addr 128 12 8 grid_dim 160 12 9 block_dim 192 8 10 shmem_size 224 8 6 stream\00", align 1
@___asan_gen_.15 = private constant [11 x i8] c"square.cpp\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [5 x i8] c".str\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c".str.1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c".str.2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c".str.3\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c".str.9\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"__hip_fatbin_wrapper\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"str.10\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"str.11\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"str.12\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"str.13\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @__hip_fatbin_wrapper, ptr @str, ptr @str.10, ptr @str.11, ptr @str.12, ptr @str.13], section "llvm.metadata"
@1 = internal global [12 x { i64, i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @2 to i64), i64 11, i64 32, i64 ptrtoint (ptr @___asan_gen_.16 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @3 to i64), i64 28, i64 64, i64 ptrtoint (ptr @___asan_gen_.17 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @4 to i64), i64 36, i64 96, i64 ptrtoint (ptr @___asan_gen_.18 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @5 to i64), i64 38, i64 96, i64 ptrtoint (ptr @___asan_gen_.19 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @6 to i64), i64 69, i64 128, i64 ptrtoint (ptr @___asan_gen_.20 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @7 to i64), i64 29, i64 64, i64 ptrtoint (ptr @___asan_gen_.21 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @8 to i64), i64 24, i64 64, i64 ptrtoint (ptr @___asan_gen_.22 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @9 to i64), i64 23, i64 64, i64 ptrtoint (ptr @___asan_gen_.23 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @10 to i64), i64 36, i64 96, i64 ptrtoint (ptr @___asan_gen_.24 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @11 to i64), i64 23, i64 64, i64 ptrtoint (ptr @___asan_gen_.25 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @12 to i64), i64 28, i64 64, i64 ptrtoint (ptr @___asan_gen_.26 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint (ptr @13 to i64), i64 8, i64 32, i64 ptrtoint (ptr @___asan_gen_.27 to i64), i64 ptrtoint (ptr @___asan_gen_.15 to i64), i64 0, i64 0, i64 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__hip_module_ctor, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@2 = private alias { [11 x i8], [21 x i8] }, ptr @.str
@3 = private alias { [28 x i8], [36 x i8] }, ptr @.str.1
@4 = private alias { [36 x i8], [60 x i8] }, ptr @.str.2
@5 = private alias { [38 x i8], [58 x i8] }, ptr @.str.3
@6 = private alias { [69 x i8], [59 x i8] }, ptr @.str.9
@7 = private alias { [29 x i8], [35 x i8] }, ptr @0
@8 = private alias { { i32, i32, ptr, ptr }, [40 x i8] }, ptr @__hip_fatbin_wrapper
@9 = private alias { [23 x i8], [41 x i8] }, ptr @str
@10 = private alias { [36 x i8], [60 x i8] }, ptr @str.10
@11 = private alias { [23 x i8], [41 x i8] }, ptr @str.11
@12 = private alias { [28 x i8], [36 x i8] }, ptr @str.12
@13 = private alias { [8 x i8], [24 x i8] }, ptr @str.13

; Function Attrs: norecurse sanitize_address uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %asan_local_stack_base = alloca i64, align 8
  %0 = load i32, ptr @__asan_option_detect_stack_use_after_return, align 4
  %1 = icmp ne i32 %0, 0
  br i1 %1, label %2, label %4

2:                                                ; preds = %entry
  %3 = call i64 @__asan_stack_malloc_5(i64 1312)
  br label %4

4:                                                ; preds = %entry, %2
  %5 = phi i64 [ 0, %entry ], [ %3, %2 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %MyAlloca = alloca i8, i64 1312, align 32
  %8 = ptrtoint ptr %MyAlloca to i64
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i64 [ %5, %4 ], [ %8, %7 ]
  store i64 %10, ptr %asan_local_stack_base, align 8
  %11 = add i64 %10, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %10, 64
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %10, 96
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %10, 128
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %10, 160
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %10, 192
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %10, 224
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %10, 256
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %10, 320
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %10, 352
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %10, 384
  %32 = inttoptr i64 %31 to ptr
  %33 = inttoptr i64 %10 to ptr
  store i64 1102416563, ptr %33, align 8
  %34 = add i64 %10, 8
  %35 = inttoptr i64 %34 to ptr
  store i64 ptrtoint (ptr @___asan_gen_ to i64), ptr %35, align 8
  %36 = add i64 %10, 16
  %37 = inttoptr i64 %36 to ptr
  store i64 ptrtoint (ptr @main to i64), ptr %37, align 8
  %38 = lshr i64 %10, 3
  %39 = add i64 %38, 2147450880
  %40 = add i64 %39, 0
  %41 = inttoptr i64 %40 to ptr
  store i64 -940422221142035983, ptr %41, align 1
  %42 = add i64 %39, 8
  %43 = inttoptr i64 %42 to ptr
  store i64 -940422221125192968, ptr %43, align 1
  %44 = add i64 %39, 16
  %45 = inttoptr i64 %44 to ptr
  store i64 -940415624055424776, ptr %45, align 1
  %46 = add i64 %39, 24
  %47 = inttoptr i64 %46 to ptr
  store i64 -940422221125192968, ptr %47, align 1
  %48 = add i64 %39, 32
  %49 = inttoptr i64 %48 to ptr
  store i64 -940422246894601992, ptr %49, align 1
  %50 = add i64 %39, 40
  %51 = inttoptr i64 %50 to ptr
  store i64 -940422221125192968, ptr %51, align 1
  %52 = add i64 %39, 48
  call void @__asan_set_shadow_f8(i64 %52, i64 99)
  %53 = add i64 %39, 147
  %54 = inttoptr i64 %53 to ptr
  store i64 -868082074056920077, ptr %54, align 1
  %55 = add i64 %39, 155
  %56 = inttoptr i64 %55 to ptr
  store i64 -868082074056920077, ptr %56, align 1
  %57 = add i64 %39, 163
  %58 = inttoptr i64 %57 to ptr
  store i8 -13, ptr %58, align 1
  %59 = add i64 %39, 40
  %60 = inttoptr i64 %59 to ptr
  store i8 0, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #9
  %61 = add i64 %39, 44
  %62 = inttoptr i64 %61 to ptr
  store i8 0, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #9
  %63 = add i64 %39, 48
  call void @__asan_set_shadow_00(i64 %63, i64 99)
  call void @llvm.lifetime.start.p0(i64 792, ptr nonnull %32) #9
  %call = call i32 @hipGetDeviceProperties(ptr noundef nonnull %32, i32 noundef 0)
  %cmp.not.i = icmp eq i32 %call, 0
  br i1 %cmp.not.i, label %_Z16__checkHipErrors10hipError_tPKci.exit, label %if.then.i

if.then.i:                                        ; preds = %9
  %call.i = call ptr @hipGetErrorString(i32 noundef %call)
  %64 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %if.then.i
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

67:                                               ; preds = %if.then.i
  %68 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.9, i32 noundef %call, ptr noundef %call.i, ptr noundef nonnull @.str, i32 noundef 50) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit:        ; preds = %9
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %32)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef 0x401E848000000000)
  %call5 = call noalias dereferenceable_or_null(4000000) ptr @malloc(i64 noundef 4000000) #13
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %if.then.i70, label %_Z16__checkHipErrors10hipError_tPKci.exit71

if.then.i70:                                      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit
  %call.i68 = call ptr @hipGetErrorString(i32 noundef 2)
  %69 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %if.then.i70
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

72:                                               ; preds = %if.then.i70
  %73 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef %call.i68, ptr noundef nonnull @.str, i32 noundef 55) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit71:      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit
  %call6 = call noalias dereferenceable_or_null(4000000) ptr @malloc(i64 noundef 4000000) #13
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %if.then.i75, label %vector.body

vector.body:                                      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit71, %133
  %index = phi i64 [ %index.next.1, %133 ], [ 0, %_Z16__checkHipErrors10hipError_tPKci.exit71 ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next.1, %133 ], [ <i64 0, i64 1, i64 2, i64 3>, %_Z16__checkHipErrors10hipError_tPKci.exit71 ]
  %74 = uitofp <4 x i64> %vec.ind to <4 x float>
  %75 = fadd contract <4 x float> %74, <float 0x3FF9E35400000000, float 0x3FF9E35400000000, float 0x3FF9E35400000000, float 0x3FF9E35400000000>
  %76 = getelementptr inbounds float, ptr %call5, i64 %index
  %77 = ptrtoint ptr %76 to i64
  %78 = add i64 %77, 15
  %79 = inttoptr i64 %78 to ptr
  %80 = ptrtoint ptr %76 to i64
  %81 = lshr i64 %80, 3
  %82 = add i64 %81, 2147450880
  %83 = inttoptr i64 %82 to ptr
  %84 = load i8, ptr %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %91, !prof !7

86:                                               ; preds = %vector.body
  %87 = and i64 %80, 7
  %88 = trunc i64 %87 to i8
  %89 = icmp sge i8 %88, %84
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void @__asan_report_store_n(i64 %80, i64 16) #10
  unreachable

91:                                               ; preds = %86, %vector.body
  %92 = ptrtoint ptr %79 to i64
  %93 = lshr i64 %92, 3
  %94 = add i64 %93, 2147450880
  %95 = inttoptr i64 %94 to ptr
  %96 = load i8, ptr %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %103, !prof !7

98:                                               ; preds = %91
  %99 = and i64 %92, 7
  %100 = trunc i64 %99 to i8
  %101 = icmp sge i8 %100, %96
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call void @__asan_report_store_n(i64 %92, i64 16) #10
  unreachable

103:                                              ; preds = %98, %91
  store <4 x float> %75, ptr %76, align 4, !tbaa !8
  %index.next = or i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %104 = uitofp <4 x i64> %vec.ind.next to <4 x float>
  %105 = fadd contract <4 x float> %104, <float 0x3FF9E35400000000, float 0x3FF9E35400000000, float 0x3FF9E35400000000, float 0x3FF9E35400000000>
  %106 = getelementptr inbounds float, ptr %call5, i64 %index.next
  %107 = ptrtoint ptr %106 to i64
  %108 = add i64 %107, 15
  %109 = inttoptr i64 %108 to ptr
  %110 = ptrtoint ptr %106 to i64
  %111 = lshr i64 %110, 3
  %112 = add i64 %111, 2147450880
  %113 = inttoptr i64 %112 to ptr
  %114 = load i8, ptr %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %121, !prof !7

116:                                              ; preds = %103
  %117 = and i64 %110, 7
  %118 = trunc i64 %117 to i8
  %119 = icmp sge i8 %118, %114
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call void @__asan_report_store_n(i64 %110, i64 16) #10
  unreachable

121:                                              ; preds = %116, %103
  %122 = ptrtoint ptr %109 to i64
  %123 = lshr i64 %122, 3
  %124 = add i64 %123, 2147450880
  %125 = inttoptr i64 %124 to ptr
  %126 = load i8, ptr %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %133, !prof !7

128:                                              ; preds = %121
  %129 = and i64 %122, 7
  %130 = trunc i64 %129 to i8
  %131 = icmp sge i8 %130, %126
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  call void @__asan_report_store_n(i64 %122, i64 16) #10
  unreachable

133:                                              ; preds = %128, %121
  store <4 x float> %105, ptr %106, align 4, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 8
  %vec.ind.next.1 = add <4 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8>
  %134 = icmp eq i64 %index.next.1, 1000000
  br i1 %134, label %for.cond.cleanup, label %vector.body, !llvm.loop !10

if.then.i75:                                      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit71
  %call.i73 = call ptr @hipGetErrorString(i32 noundef 2)
  %135 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %if.then.i75
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

138:                                              ; preds = %if.then.i75
  %139 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef %call.i73, ptr noundef nonnull @.str, i32 noundef 57) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

for.cond.cleanup:                                 ; preds = %133
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef 0x401E848000000000)
  %call.i77 = call i32 @hipMalloc(ptr noundef nonnull %28, i64 noundef 4000000)
  %cmp.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %cmp.not.i78, label %_Z16__checkHipErrors10hipError_tPKci.exit82, label %if.then.i81

if.then.i81:                                      ; preds = %for.cond.cleanup
  %call.i79 = call ptr @hipGetErrorString(i32 noundef %call.i77)
  %140 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %if.then.i81
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

143:                                              ; preds = %if.then.i81
  %144 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.9, i32 noundef %call.i77, ptr noundef %call.i79, ptr noundef nonnull @.str, i32 noundef 65) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit82:      ; preds = %for.cond.cleanup
  %call.i83 = call i32 @hipMalloc(ptr noundef nonnull %30, i64 noundef 4000000)
  %cmp.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %cmp.not.i84, label %_Z16__checkHipErrors10hipError_tPKci.exit88, label %if.then.i87

if.then.i87:                                      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit82
  %call.i85 = call ptr @hipGetErrorString(i32 noundef %call.i83)
  %145 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %146 = icmp ne i8 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %if.then.i87
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

148:                                              ; preds = %if.then.i87
  %149 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.9, i32 noundef %call.i83, ptr noundef %call.i85, ptr noundef nonnull @.str, i32 noundef 66) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit88:      ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit82
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %150 = ptrtoint ptr %28 to i64
  %151 = lshr i64 %150, 3
  %152 = add i64 %151, 2147450880
  %153 = inttoptr i64 %152 to ptr
  %154 = load i8, ptr %153, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit88
  call void @__asan_report_load8(i64 %150) #10
  unreachable

157:                                              ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit88
  %158 = load ptr, ptr %28, align 8, !tbaa !3
  %call19 = call i32 @hipMemcpy(ptr noundef %158, ptr noundef nonnull %call5, i64 noundef 4000000, i32 noundef 1)
  %cmp.not.i89 = icmp eq i32 %call19, 0
  br i1 %cmp.not.i89, label %_Z16__checkHipErrors10hipError_tPKci.exit93, label %if.then.i92

if.then.i92:                                      ; preds = %157
  %call.i90 = call ptr @hipGetErrorString(i32 noundef %call19)
  %159 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %if.then.i92
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

162:                                              ; preds = %if.then.i92
  %163 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.9, i32 noundef %call19, ptr noundef %call.i90, ptr noundef nonnull @.str, i32 noundef 70) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit93:      ; preds = %157
  %puts63 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %call22 = call i32 @__hipPushCallConfiguration(i64 4294967808, i32 1, i64 4294967552, i32 1, i64 noundef 0, ptr noundef null)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %kcall.configok, label %kcall.end

kcall.configok:                                   ; preds = %_Z16__checkHipErrors10hipError_tPKci.exit93
  %164 = ptrtoint ptr %30 to i64
  %165 = lshr i64 %164, 3
  %166 = add i64 %165, 2147450880
  %167 = inttoptr i64 %166 to ptr
  %168 = load i8, ptr %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %kcall.configok
  call void @__asan_report_load8(i64 %164) #10
  unreachable

171:                                              ; preds = %kcall.configok
  %172 = load ptr, ptr %30, align 8, !tbaa !3
  %173 = ptrtoint ptr %28 to i64
  %174 = lshr i64 %173, 3
  %175 = add i64 %174, 2147450880
  %176 = inttoptr i64 %175 to ptr
  %177 = load i8, ptr %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  call void @__asan_report_load8(i64 %173) #10
  unreachable

180:                                              ; preds = %171
  %181 = load ptr, ptr %28, align 8, !tbaa !3
  %182 = add i64 %39, 4
  %183 = inttoptr i64 %182 to ptr
  store i8 0, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12)
  %184 = add i64 %39, 8
  %185 = inttoptr i64 %184 to ptr
  store i8 0, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14)
  %186 = add i64 %39, 12
  %187 = inttoptr i64 %186 to ptr
  store i8 0, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16)
  %188 = add i64 %39, 16
  %189 = inttoptr i64 %188 to ptr
  store i16 1024, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18)
  %190 = add i64 %39, 20
  %191 = inttoptr i64 %190 to ptr
  store i16 1024, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20)
  %192 = add i64 %39, 24
  %193 = inttoptr i64 %192 to ptr
  store i8 0, ptr %193, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22)
  %194 = add i64 %39, 28
  %195 = inttoptr i64 %194 to ptr
  store i8 0, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24)
  %196 = add i64 %39, 32
  %197 = inttoptr i64 %196 to ptr
  store i16 0, ptr %197, align 1
  %198 = add i64 %39, 34
  %199 = inttoptr i64 %198 to ptr
  store i8 0, ptr %199, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26)
  %200 = ptrtoint ptr %12 to i64
  %201 = lshr i64 %200, 3
  %202 = add i64 %201, 2147450880
  %203 = inttoptr i64 %202 to ptr
  %204 = load i8, ptr %203, align 1
  %205 = icmp ne i8 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %180
  call void @__asan_report_store8(i64 %200) #10
  unreachable

207:                                              ; preds = %180
  store ptr %172, ptr %12, align 8, !tbaa !3
  %208 = ptrtoint ptr %14 to i64
  %209 = lshr i64 %208, 3
  %210 = add i64 %209, 2147450880
  %211 = inttoptr i64 %210 to ptr
  %212 = load i8, ptr %211, align 1
  %213 = icmp ne i8 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  call void @__asan_report_store8(i64 %208) #10
  unreachable

215:                                              ; preds = %207
  store ptr %181, ptr %14, align 8, !tbaa !3
  %216 = ptrtoint ptr %16 to i64
  %217 = lshr i64 %216, 3
  %218 = add i64 %217, 2147450880
  %219 = inttoptr i64 %218 to ptr
  %220 = load i8, ptr %219, align 1
  %221 = icmp ne i8 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  call void @__asan_report_store8(i64 %216) #10
  unreachable

223:                                              ; preds = %215
  store i64 1000000, ptr %16, align 8, !tbaa !14
  %224 = ptrtoint ptr %26 to i64
  %225 = lshr i64 %224, 3
  %226 = add i64 %225, 2147450880
  %227 = inttoptr i64 %226 to ptr
  %228 = load i8, ptr %227, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  call void @__asan_report_store8(i64 %224) #10
  unreachable

231:                                              ; preds = %223
  store ptr %12, ptr %26, align 16
  %232 = getelementptr inbounds ptr, ptr %26, i64 1
  %233 = ptrtoint ptr %232 to i64
  %234 = lshr i64 %233, 3
  %235 = add i64 %234, 2147450880
  %236 = inttoptr i64 %235 to ptr
  %237 = load i8, ptr %236, align 1
  %238 = icmp ne i8 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  call void @__asan_report_store8(i64 %233) #10
  unreachable

240:                                              ; preds = %231
  store ptr %14, ptr %232, align 8
  %241 = getelementptr inbounds ptr, ptr %26, i64 2
  %242 = ptrtoint ptr %241 to i64
  %243 = lshr i64 %242, 3
  %244 = add i64 %243, 2147450880
  %245 = inttoptr i64 %244 to ptr
  %246 = load i8, ptr %245, align 1
  %247 = icmp ne i8 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  call void @__asan_report_store8(i64 %242) #10
  unreachable

249:                                              ; preds = %240
  store ptr %16, ptr %241, align 16
  %250 = call i32 @__hipPopCallConfiguration(ptr nonnull %18, ptr nonnull %20, ptr nonnull %22, ptr nonnull %24)
  %251 = ptrtoint ptr %22 to i64
  %252 = lshr i64 %251, 3
  %253 = add i64 %252, 2147450880
  %254 = inttoptr i64 %253 to ptr
  %255 = load i8, ptr %254, align 1
  %256 = icmp ne i8 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %249
  call void @__asan_report_load8(i64 %251) #10
  unreachable

258:                                              ; preds = %249
  %259 = load i64, ptr %22, align 8
  %260 = ptrtoint ptr %24 to i64
  %261 = lshr i64 %260, 3
  %262 = add i64 %261, 2147450880
  %263 = inttoptr i64 %262 to ptr
  %264 = load i8, ptr %263, align 1
  %265 = icmp ne i8 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  call void @__asan_report_load8(i64 %260) #10
  unreachable

267:                                              ; preds = %258
  %268 = load ptr, ptr %24, align 8
  %269 = ptrtoint ptr %18 to i64
  %270 = lshr i64 %269, 3
  %271 = add i64 %270, 2147450880
  %272 = inttoptr i64 %271 to ptr
  %273 = load i8, ptr %272, align 1
  %274 = icmp ne i8 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  call void @__asan_report_load8(i64 %269) #10
  unreachable

276:                                              ; preds = %267
  %grid_dim.coerce.sroa.0.0.copyload.i = load i64, ptr %18, align 8
  %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx.i = getelementptr inbounds i8, ptr %18, i64 8
  %277 = ptrtoint ptr %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx.i to i64
  %278 = lshr i64 %277, 3
  %279 = add i64 %278, 2147450880
  %280 = inttoptr i64 %279 to ptr
  %281 = load i8, ptr %280, align 1
  %282 = icmp ne i8 %281, 0
  br i1 %282, label %283, label %289, !prof !7

283:                                              ; preds = %276
  %284 = and i64 %277, 7
  %285 = add i64 %284, 3
  %286 = trunc i64 %285 to i8
  %287 = icmp sge i8 %286, %281
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  call void @__asan_report_load4(i64 %277) #10
  unreachable

289:                                              ; preds = %283, %276
  %grid_dim.coerce.sroa.2.0.copyload.i = load i32, ptr %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx.i, align 8
  %290 = ptrtoint ptr %20 to i64
  %291 = lshr i64 %290, 3
  %292 = add i64 %291, 2147450880
  %293 = inttoptr i64 %292 to ptr
  %294 = load i8, ptr %293, align 1
  %295 = icmp ne i8 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  call void @__asan_report_load8(i64 %290) #10
  unreachable

297:                                              ; preds = %289
  %block_dim.coerce.sroa.0.0.copyload.i = load i64, ptr %20, align 8
  %block_dim.coerce.sroa.2.0.block_dim.sroa_idx.i = getelementptr inbounds i8, ptr %20, i64 8
  %298 = ptrtoint ptr %block_dim.coerce.sroa.2.0.block_dim.sroa_idx.i to i64
  %299 = lshr i64 %298, 3
  %300 = add i64 %299, 2147450880
  %301 = inttoptr i64 %300 to ptr
  %302 = load i8, ptr %301, align 1
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %304, label %310, !prof !7

304:                                              ; preds = %297
  %305 = and i64 %298, 7
  %306 = add i64 %305, 3
  %307 = trunc i64 %306 to i8
  %308 = icmp sge i8 %307, %302
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  call void @__asan_report_load4(i64 %298) #10
  unreachable

310:                                              ; preds = %304, %297
  %block_dim.coerce.sroa.2.0.copyload.i = load i32, ptr %block_dim.coerce.sroa.2.0.block_dim.sroa_idx.i, align 8
  %call.i96 = call noundef i32 @hipLaunchKernel(ptr noundef nonnull @_Z13vector_squareIfEvPT_S1_m, i64 %grid_dim.coerce.sroa.0.0.copyload.i, i32 %grid_dim.coerce.sroa.2.0.copyload.i, i64 %block_dim.coerce.sroa.0.0.copyload.i, i32 %block_dim.coerce.sroa.2.0.copyload.i, ptr noundef nonnull %26, i64 noundef %259, ptr noundef %268)
  %311 = add i64 %39, 4
  %312 = inttoptr i64 %311 to ptr
  store i8 -8, ptr %312, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12)
  %313 = add i64 %39, 8
  %314 = inttoptr i64 %313 to ptr
  store i8 -8, ptr %314, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14)
  %315 = add i64 %39, 12
  %316 = inttoptr i64 %315 to ptr
  store i8 -8, ptr %316, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16)
  %317 = add i64 %39, 16
  %318 = inttoptr i64 %317 to ptr
  store i16 -1800, ptr %318, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18)
  %319 = add i64 %39, 20
  %320 = inttoptr i64 %319 to ptr
  store i16 -1800, ptr %320, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20)
  %321 = add i64 %39, 24
  %322 = inttoptr i64 %321 to ptr
  store i8 -8, ptr %322, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22)
  %323 = add i64 %39, 28
  %324 = inttoptr i64 %323 to ptr
  store i8 -8, ptr %324, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24)
  %325 = add i64 %39, 32
  %326 = inttoptr i64 %325 to ptr
  store i16 -1800, ptr %326, align 1
  %327 = add i64 %39, 34
  %328 = inttoptr i64 %327 to ptr
  store i8 -8, ptr %328, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26)
  br label %kcall.end

kcall.end:                                        ; preds = %310, %_Z16__checkHipErrors10hipError_tPKci.exit93
  %puts64 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %329 = ptrtoint ptr %30 to i64
  %330 = lshr i64 %329, 3
  %331 = add i64 %330, 2147450880
  %332 = inttoptr i64 %331 to ptr
  %333 = load i8, ptr %332, align 1
  %334 = icmp ne i8 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %kcall.end
  call void @__asan_report_load8(i64 %329) #10
  unreachable

336:                                              ; preds = %kcall.end
  %337 = load ptr, ptr %30, align 8, !tbaa !3
  %call24 = call i32 @hipMemcpy(ptr noundef nonnull %call6, ptr noundef %337, i64 noundef 4000000, i32 noundef 2)
  %cmp.not.i97 = icmp eq i32 %call24, 0
  br i1 %cmp.not.i97, label %_Z16__checkHipErrors10hipError_tPKci.exit101, label %if.then.i100

if.then.i100:                                     ; preds = %336
  %call.i98 = call ptr @hipGetErrorString(i32 noundef %call24)
  %338 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %339 = icmp ne i8 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %if.then.i100
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

341:                                              ; preds = %if.then.i100
  %342 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef nonnull @.str.9, i32 noundef %call24, ptr noundef %call.i98, ptr noundef nonnull @.str, i32 noundef 79) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable

_Z16__checkHipErrors10hipError_tPKci.exit101:     ; preds = %336
  %puts65 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %for.body30

for.cond27:                                       ; preds = %463
  %inc37 = or i64 %i26.0107, 1
  %arrayidx31.1 = getelementptr inbounds float, ptr %call6, i64 %inc37
  %343 = ptrtoint ptr %arrayidx31.1 to i64
  %344 = lshr i64 %343, 3
  %345 = add i64 %344, 2147450880
  %346 = inttoptr i64 %345 to ptr
  %347 = load i8, ptr %346, align 1
  %348 = icmp ne i8 %347, 0
  br i1 %348, label %349, label %355, !prof !7

349:                                              ; preds = %for.cond27
  %350 = and i64 %343, 7
  %351 = add i64 %350, 3
  %352 = trunc i64 %351 to i8
  %353 = icmp sge i8 %352, %347
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  call void @__asan_report_load4(i64 %343) #10
  unreachable

355:                                              ; preds = %349, %for.cond27
  %356 = load float, ptr %arrayidx31.1, align 4, !tbaa !8
  %arrayidx32.1 = getelementptr inbounds float, ptr %call5, i64 %inc37
  %357 = ptrtoint ptr %arrayidx32.1 to i64
  %358 = lshr i64 %357, 3
  %359 = add i64 %358, 2147450880
  %360 = inttoptr i64 %359 to ptr
  %361 = load i8, ptr %360, align 1
  %362 = icmp ne i8 %361, 0
  br i1 %362, label %363, label %369, !prof !7

363:                                              ; preds = %355
  %364 = and i64 %357, 7
  %365 = add i64 %364, 3
  %366 = trunc i64 %365 to i8
  %367 = icmp sge i8 %366, %361
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  call void @__asan_report_load4(i64 %357) #10
  unreachable

369:                                              ; preds = %363, %355
  %370 = load float, ptr %arrayidx32.1, align 4, !tbaa !8
  %mul34.1 = fmul contract float %370, %370
  %cmp35.1 = fcmp contract une float %356, %mul34.1
  br i1 %cmp35.1, label %if.then, label %for.cond27.1

for.cond27.1:                                     ; preds = %369
  %inc37.1 = or i64 %i26.0107, 2
  %arrayidx31.2 = getelementptr inbounds float, ptr %call6, i64 %inc37.1
  %371 = ptrtoint ptr %arrayidx31.2 to i64
  %372 = lshr i64 %371, 3
  %373 = add i64 %372, 2147450880
  %374 = inttoptr i64 %373 to ptr
  %375 = load i8, ptr %374, align 1
  %376 = icmp ne i8 %375, 0
  br i1 %376, label %377, label %383, !prof !7

377:                                              ; preds = %for.cond27.1
  %378 = and i64 %371, 7
  %379 = add i64 %378, 3
  %380 = trunc i64 %379 to i8
  %381 = icmp sge i8 %380, %375
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  call void @__asan_report_load4(i64 %371) #10
  unreachable

383:                                              ; preds = %377, %for.cond27.1
  %384 = load float, ptr %arrayidx31.2, align 4, !tbaa !8
  %arrayidx32.2 = getelementptr inbounds float, ptr %call5, i64 %inc37.1
  %385 = ptrtoint ptr %arrayidx32.2 to i64
  %386 = lshr i64 %385, 3
  %387 = add i64 %386, 2147450880
  %388 = inttoptr i64 %387 to ptr
  %389 = load i8, ptr %388, align 1
  %390 = icmp ne i8 %389, 0
  br i1 %390, label %391, label %397, !prof !7

391:                                              ; preds = %383
  %392 = and i64 %385, 7
  %393 = add i64 %392, 3
  %394 = trunc i64 %393 to i8
  %395 = icmp sge i8 %394, %389
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  call void @__asan_report_load4(i64 %385) #10
  unreachable

397:                                              ; preds = %391, %383
  %398 = load float, ptr %arrayidx32.2, align 4, !tbaa !8
  %mul34.2 = fmul contract float %398, %398
  %cmp35.2 = fcmp contract une float %384, %mul34.2
  br i1 %cmp35.2, label %if.then, label %for.cond27.2

for.cond27.2:                                     ; preds = %397
  %inc37.2 = or i64 %i26.0107, 3
  %arrayidx31.3 = getelementptr inbounds float, ptr %call6, i64 %inc37.2
  %399 = ptrtoint ptr %arrayidx31.3 to i64
  %400 = lshr i64 %399, 3
  %401 = add i64 %400, 2147450880
  %402 = inttoptr i64 %401 to ptr
  %403 = load i8, ptr %402, align 1
  %404 = icmp ne i8 %403, 0
  br i1 %404, label %405, label %411, !prof !7

405:                                              ; preds = %for.cond27.2
  %406 = and i64 %399, 7
  %407 = add i64 %406, 3
  %408 = trunc i64 %407 to i8
  %409 = icmp sge i8 %408, %403
  br i1 %409, label %410, label %411

410:                                              ; preds = %405
  call void @__asan_report_load4(i64 %399) #10
  unreachable

411:                                              ; preds = %405, %for.cond27.2
  %412 = load float, ptr %arrayidx31.3, align 4, !tbaa !8
  %arrayidx32.3 = getelementptr inbounds float, ptr %call5, i64 %inc37.2
  %413 = ptrtoint ptr %arrayidx32.3 to i64
  %414 = lshr i64 %413, 3
  %415 = add i64 %414, 2147450880
  %416 = inttoptr i64 %415 to ptr
  %417 = load i8, ptr %416, align 1
  %418 = icmp ne i8 %417, 0
  br i1 %418, label %419, label %425, !prof !7

419:                                              ; preds = %411
  %420 = and i64 %413, 7
  %421 = add i64 %420, 3
  %422 = trunc i64 %421 to i8
  %423 = icmp sge i8 %422, %417
  br i1 %423, label %424, label %425

424:                                              ; preds = %419
  call void @__asan_report_load4(i64 %413) #10
  unreachable

425:                                              ; preds = %419, %411
  %426 = load float, ptr %arrayidx32.3, align 4, !tbaa !8
  %mul34.3 = fmul contract float %426, %426
  %cmp35.3 = fcmp contract une float %412, %mul34.3
  br i1 %cmp35.3, label %if.then, label %for.cond27.3

for.cond27.3:                                     ; preds = %425
  %inc37.3 = add nuw nsw i64 %i26.0107, 4
  %exitcond108.not.3 = icmp eq i64 %inc37.3, 1000000
  br i1 %exitcond108.not.3, label %for.cond.cleanup29, label %for.body30, !llvm.loop !16

for.cond.cleanup29:                               ; preds = %for.cond27.3
  %puts66 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %427 = add i64 %39, 48
  call void @__asan_set_shadow_f8(i64 %427, i64 99)
  call void @llvm.lifetime.end.p0(i64 792, ptr nonnull %32) #9
  %428 = add i64 %39, 44
  %429 = inttoptr i64 %428 to ptr
  store i8 -8, ptr %429, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #9
  %430 = add i64 %39, 40
  %431 = inttoptr i64 %430 to ptr
  store i8 -8, ptr %431, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #9
  store i64 1172321806, ptr %33, align 8
  %432 = icmp ne i64 %5, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %for.cond.cleanup29
  call void @__asan_stack_free_5(i64 %5, i64 1312)
  br label %436

434:                                              ; preds = %for.cond.cleanup29
  %435 = add i64 %39, 0
  call void @__asan_set_shadow_00(i64 %435, i64 164)
  br label %436

436:                                              ; preds = %434, %433
  ret i32 0

for.body30:                                       ; preds = %for.cond27.3, %_Z16__checkHipErrors10hipError_tPKci.exit101
  %i26.0107 = phi i64 [ 0, %_Z16__checkHipErrors10hipError_tPKci.exit101 ], [ %inc37.3, %for.cond27.3 ]
  %arrayidx31 = getelementptr inbounds float, ptr %call6, i64 %i26.0107
  %437 = ptrtoint ptr %arrayidx31 to i64
  %438 = lshr i64 %437, 3
  %439 = add i64 %438, 2147450880
  %440 = inttoptr i64 %439 to ptr
  %441 = load i8, ptr %440, align 1
  %442 = icmp ne i8 %441, 0
  br i1 %442, label %443, label %449, !prof !7

443:                                              ; preds = %for.body30
  %444 = and i64 %437, 7
  %445 = add i64 %444, 3
  %446 = trunc i64 %445 to i8
  %447 = icmp sge i8 %446, %441
  br i1 %447, label %448, label %449

448:                                              ; preds = %443
  call void @__asan_report_load4(i64 %437) #10
  unreachable

449:                                              ; preds = %443, %for.body30
  %450 = load float, ptr %arrayidx31, align 4, !tbaa !8
  %arrayidx32 = getelementptr inbounds float, ptr %call5, i64 %i26.0107
  %451 = ptrtoint ptr %arrayidx32 to i64
  %452 = lshr i64 %451, 3
  %453 = add i64 %452, 2147450880
  %454 = inttoptr i64 %453 to ptr
  %455 = load i8, ptr %454, align 1
  %456 = icmp ne i8 %455, 0
  br i1 %456, label %457, label %463, !prof !7

457:                                              ; preds = %449
  %458 = and i64 %451, 7
  %459 = add i64 %458, 3
  %460 = trunc i64 %459 to i8
  %461 = icmp sge i8 %460, %455
  br i1 %461, label %462, label %463

462:                                              ; preds = %457
  call void @__asan_report_load4(i64 %451) #10
  unreachable

463:                                              ; preds = %457, %449
  %464 = load float, ptr %arrayidx32, align 4, !tbaa !8
  %mul34 = fmul contract float %464, %464
  %cmp35 = fcmp contract une float %450, %mul34
  br i1 %cmp35, label %if.then, label %for.cond27

if.then:                                          ; preds = %425, %397, %369, %463
  %call.i102 = call ptr @hipGetErrorString(i32 noundef 999)
  %465 = load i8, ptr inttoptr (i64 add (i64 lshr (i64 ptrtoint (ptr @stderr to i64), i64 3), i64 2147450880) to ptr), align 1
  %466 = icmp ne i8 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %if.then
  call void @__asan_report_load8(i64 ptrtoint (ptr @stderr to i64)) #10
  unreachable

468:                                              ; preds = %if.then
  %469 = load ptr, ptr @stderr, align 8, !tbaa !3
  %call1.i103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %469, ptr noundef nonnull @.str.9, i32 noundef 999, ptr noundef %call.i102, ptr noundef nonnull @.str, i32 noundef 84) #11
  call void @__asan_handle_no_return()
  call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local i32 @hipGetDeviceProperties(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local i32 @hipMemcpy(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: norecurse sanitize_address uwtable
define linkonce_odr dso_local void @_Z28__device_stub__vector_squareIfEvPT_S1_m(ptr noundef %C_d, ptr noundef %A_d, i64 noundef %N) #5 comdat {
entry:
  %0 = alloca i64, align 32
  store i64 0, ptr %0, align 8
  %asan_local_stack_base = alloca i64, align 8
  %1 = load i32, ptr @__asan_option_detect_stack_use_after_return, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %entry
  %4 = call i64 @__asan_stack_malloc_2(i64 256)
  br label %5

5:                                                ; preds = %entry, %3
  %6 = phi i64 [ 0, %entry ], [ %4, %3 ]
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %MyAlloca = alloca i8, i64 256, align 32
  %9 = ptrtoint ptr %MyAlloca to i64
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i64 [ %6, %5 ], [ %9, %8 ]
  store i64 %11, ptr %asan_local_stack_base, align 8
  %12 = add i64 %11, 32
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %11, 64
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %11, 96
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %11, 128
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %11, 160
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %11, 192
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %11, 224
  %25 = inttoptr i64 %24 to ptr
  %26 = inttoptr i64 %11 to ptr
  store i64 1102416563, ptr %26, align 8
  %27 = add i64 %11, 8
  %28 = inttoptr i64 %27 to ptr
  store i64 ptrtoint (ptr @___asan_gen_.14 to i64), ptr %28, align 8
  %29 = add i64 %11, 16
  %30 = inttoptr i64 %29 to ptr
  store i64 ptrtoint (ptr @_Z28__device_stub__vector_squareIfEvPT_S1_m to i64), ptr %30, align 8
  %31 = lshr i64 %11, 3
  %32 = add i64 %31, 2147450880
  %33 = add i64 %32, 0
  %34 = inttoptr i64 %33 to ptr
  store i64 -940423286293925391, ptr %34, align 1
  %35 = add i64 %32, 9
  %36 = inttoptr i64 %35 to ptr
  store i64 68384065575908082, ptr %36, align 1
  %37 = add i64 %32, 17
  %38 = inttoptr i64 %37 to ptr
  store i64 68383043373691396, ptr %38, align 1
  %39 = add i64 %32, 25
  %40 = inttoptr i64 %39 to ptr
  store i32 15921906, ptr %40, align 1
  %41 = add i64 %32, 29
  %42 = inttoptr i64 %41 to ptr
  store i16 -3085, ptr %42, align 1
  %43 = add i64 %32, 31
  %44 = inttoptr i64 %43 to ptr
  store i8 -13, ptr %44, align 1
  %45 = ptrtoint ptr %13 to i64
  %46 = lshr i64 %45, 3
  %47 = add i64 %46, 2147450880
  %48 = inttoptr i64 %47 to ptr
  %49 = load i8, ptr %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %10
  call void @__asan_report_store8(i64 %45) #10
  unreachable

52:                                               ; preds = %10
  store ptr %C_d, ptr %13, align 8, !tbaa !3
  %53 = ptrtoint ptr %15 to i64
  %54 = lshr i64 %53, 3
  %55 = add i64 %54, 2147450880
  %56 = inttoptr i64 %55 to ptr
  %57 = load i8, ptr %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void @__asan_report_store8(i64 %53) #10
  unreachable

60:                                               ; preds = %52
  store ptr %A_d, ptr %15, align 8, !tbaa !3
  %61 = ptrtoint ptr %17 to i64
  %62 = lshr i64 %61, 3
  %63 = add i64 %62, 2147450880
  %64 = inttoptr i64 %63 to ptr
  %65 = load i8, ptr %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  call void @__asan_report_store8(i64 %61) #10
  unreachable

68:                                               ; preds = %60
  store i64 %N, ptr %17, align 8, !tbaa !14
  %69 = alloca i8, i64 96, align 32
  %70 = ptrtoint ptr %69 to i64
  %71 = add i64 %70, 32
  call void @__asan_alloca_poison(i64 %71, i64 24)
  %72 = ptrtoint ptr %69 to i64
  store i64 %72, ptr %0, align 8
  %73 = inttoptr i64 %71 to ptr
  %74 = ptrtoint ptr %73 to i64
  %75 = lshr i64 %74, 3
  %76 = add i64 %75, 2147450880
  %77 = inttoptr i64 %76 to ptr
  %78 = load i8, ptr %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  call void @__asan_report_store8(i64 %74) #10
  unreachable

81:                                               ; preds = %68
  store ptr %13, ptr %73, align 16
  %82 = getelementptr inbounds ptr, ptr %73, i64 1
  %83 = ptrtoint ptr %82 to i64
  %84 = lshr i64 %83, 3
  %85 = add i64 %84, 2147450880
  %86 = inttoptr i64 %85 to ptr
  %87 = load i8, ptr %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  call void @__asan_report_store8(i64 %83) #10
  unreachable

90:                                               ; preds = %81
  store ptr %15, ptr %82, align 8
  %91 = getelementptr inbounds ptr, ptr %73, i64 2
  %92 = ptrtoint ptr %91 to i64
  %93 = lshr i64 %92, 3
  %94 = add i64 %93, 2147450880
  %95 = inttoptr i64 %94 to ptr
  %96 = load i8, ptr %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  call void @__asan_report_store8(i64 %92) #10
  unreachable

99:                                               ; preds = %90
  store ptr %17, ptr %91, align 16
  %100 = call i32 @__hipPopCallConfiguration(ptr nonnull %19, ptr nonnull %21, ptr nonnull %23, ptr nonnull %25)
  %101 = ptrtoint ptr %23 to i64
  %102 = lshr i64 %101, 3
  %103 = add i64 %102, 2147450880
  %104 = inttoptr i64 %103 to ptr
  %105 = load i8, ptr %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  call void @__asan_report_load8(i64 %101) #10
  unreachable

108:                                              ; preds = %99
  %109 = load i64, ptr %23, align 8
  %110 = ptrtoint ptr %25 to i64
  %111 = lshr i64 %110, 3
  %112 = add i64 %111, 2147450880
  %113 = inttoptr i64 %112 to ptr
  %114 = load i8, ptr %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  call void @__asan_report_load8(i64 %110) #10
  unreachable

117:                                              ; preds = %108
  %118 = load ptr, ptr %25, align 8
  %119 = ptrtoint ptr %19 to i64
  %120 = lshr i64 %119, 3
  %121 = add i64 %120, 2147450880
  %122 = inttoptr i64 %121 to ptr
  %123 = load i8, ptr %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  call void @__asan_report_load8(i64 %119) #10
  unreachable

126:                                              ; preds = %117
  %grid_dim.coerce.sroa.0.0.copyload = load i64, ptr %19, align 8
  %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx = getelementptr inbounds i8, ptr %19, i64 8
  %127 = ptrtoint ptr %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx to i64
  %128 = lshr i64 %127, 3
  %129 = add i64 %128, 2147450880
  %130 = inttoptr i64 %129 to ptr
  %131 = load i8, ptr %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %139, !prof !7

133:                                              ; preds = %126
  %134 = and i64 %127, 7
  %135 = add i64 %134, 3
  %136 = trunc i64 %135 to i8
  %137 = icmp sge i8 %136, %131
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  call void @__asan_report_load4(i64 %127) #10
  unreachable

139:                                              ; preds = %133, %126
  %grid_dim.coerce.sroa.2.0.copyload = load i32, ptr %grid_dim.coerce.sroa.2.0.grid_dim.sroa_idx, align 8
  %140 = ptrtoint ptr %21 to i64
  %141 = lshr i64 %140, 3
  %142 = add i64 %141, 2147450880
  %143 = inttoptr i64 %142 to ptr
  %144 = load i8, ptr %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  call void @__asan_report_load8(i64 %140) #10
  unreachable

147:                                              ; preds = %139
  %block_dim.coerce.sroa.0.0.copyload = load i64, ptr %21, align 8
  %block_dim.coerce.sroa.2.0.block_dim.sroa_idx = getelementptr inbounds i8, ptr %21, i64 8
  %148 = ptrtoint ptr %block_dim.coerce.sroa.2.0.block_dim.sroa_idx to i64
  %149 = lshr i64 %148, 3
  %150 = add i64 %149, 2147450880
  %151 = inttoptr i64 %150 to ptr
  %152 = load i8, ptr %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %160, !prof !7

154:                                              ; preds = %147
  %155 = and i64 %148, 7
  %156 = add i64 %155, 3
  %157 = trunc i64 %156 to i8
  %158 = icmp sge i8 %157, %152
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  call void @__asan_report_load4(i64 %148) #10
  unreachable

160:                                              ; preds = %154, %147
  %block_dim.coerce.sroa.2.0.copyload = load i32, ptr %block_dim.coerce.sroa.2.0.block_dim.sroa_idx, align 8
  %call = call noundef i32 @hipLaunchKernel(ptr noundef nonnull @_Z13vector_squareIfEvPT_S1_m, i64 %grid_dim.coerce.sroa.0.0.copyload, i32 %grid_dim.coerce.sroa.2.0.copyload, i64 %block_dim.coerce.sroa.0.0.copyload, i32 %block_dim.coerce.sroa.2.0.copyload, ptr noundef nonnull %73, i64 noundef %109, ptr noundef %118)
  %161 = ptrtoint ptr %0 to i64
  %162 = load i64, ptr %0, align 8
  call void @__asan_allocas_unpoison(i64 %162, i64 %161)
  store i64 1172321806, ptr %26, align 8
  %163 = icmp ne i64 %6, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = add i64 %32, 0
  %166 = inttoptr i64 %165 to ptr
  store i64 -723401728380766731, ptr %166, align 1
  %167 = add i64 %32, 8
  %168 = inttoptr i64 %167 to ptr
  store i64 -723401728380766731, ptr %168, align 1
  %169 = add i64 %32, 16
  %170 = inttoptr i64 %169 to ptr
  store i64 -723401728380766731, ptr %170, align 1
  %171 = add i64 %32, 24
  %172 = inttoptr i64 %171 to ptr
  store i64 -723401728380766731, ptr %172, align 1
  %173 = add i64 %6, 248
  %174 = inttoptr i64 %173 to ptr
  %175 = load i64, ptr %174, align 8
  %176 = inttoptr i64 %175 to ptr
  store i8 0, ptr %176, align 1
  br label %190

177:                                              ; preds = %160
  %178 = add i64 %32, 0
  %179 = inttoptr i64 %178 to ptr
  store i64 0, ptr %179, align 1
  %180 = add i64 %32, 9
  %181 = inttoptr i64 %180 to ptr
  store i64 0, ptr %181, align 1
  %182 = add i64 %32, 17
  %183 = inttoptr i64 %182 to ptr
  store i64 0, ptr %183, align 1
  %184 = add i64 %32, 25
  %185 = inttoptr i64 %184 to ptr
  store i32 0, ptr %185, align 1
  %186 = add i64 %32, 29
  %187 = inttoptr i64 %186 to ptr
  store i16 0, ptr %187, align 1
  %188 = add i64 %32, 31
  %189 = inttoptr i64 %188 to ptr
  store i8 0, ptr %189, align 1
  br label %190

190:                                              ; preds = %177, %164
  ret void
}

declare dso_local ptr @hipGetErrorString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #6

declare dso_local i32 @hipMalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @__hipPopCallConfiguration(ptr, ptr, ptr, ptr) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(ptr, i64, i32, i64, i32, ptr, i64, ptr) local_unnamed_addr

declare dso_local i32 @__hipRegisterFunction(ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr

declare dso_local ptr @__hipRegisterFatBinary(ptr) local_unnamed_addr

define internal void @__hip_module_ctor() {
entry:
  %0 = load ptr, ptr @__hip_gpubin_handle, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if, label %exit

if:                                               ; preds = %entry
  %2 = tail call ptr @__hipRegisterFatBinary(ptr nonnull @__hip_fatbin_wrapper)
  store ptr %2, ptr @__hip_gpubin_handle, align 8
  br label %exit

exit:                                             ; preds = %if, %entry
  %3 = phi ptr [ %2, %if ], [ %0, %entry ]
  %4 = tail call i32 @__hipRegisterFunction(ptr %3, ptr nonnull @_Z13vector_squareIfEvPT_S1_m, ptr nonnull @0, ptr nonnull @0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null)
  %5 = tail call i32 @atexit(ptr nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(ptr) local_unnamed_addr

define internal void @__hip_module_dtor() {
entry:
  %0 = load ptr, ptr @__hip_gpubin_handle, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %exit, label %if

if:                                               ; preds = %entry
  tail call void @__hipUnregisterFatBinary(ptr nonnull %0)
  store ptr null, ptr @__hip_gpubin_handle, align 8
  br label %exit

exit:                                             ; preds = %if, %entry
  ret void
}

declare dso_local i32 @atexit(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

declare void @__asan_report_load4(i64)

declare void @__asan_report_load8(i64)

declare void @__asan_report_store_n(i64, i64)

declare void @__asan_report_store8(i64)

declare void @__asan_handle_no_return()

declare i64 @__asan_stack_malloc_2(i64)

declare i64 @__asan_stack_malloc_5(i64)

declare void @__asan_stack_free_5(i64, i64)

declare void @__asan_set_shadow_00(i64, i64)

declare void @__asan_set_shadow_f8(i64, i64)

declare void @__asan_alloca_poison(i64, i64)

declare void @__asan_allocas_unpoison(i64, i64)

declare void @__asan_register_globals(i64, i64)

declare void @__asan_unregister_globals(i64, i64)

declare void @__asan_init()

; Function Attrs: nounwind uwtable
define internal void @asan.module_ctor() #8 {
  call void @__asan_init()
  call void @__asan_version_mismatch_check_v8()
  call void @__asan_register_globals(i64 ptrtoint (ptr @1 to i64), i64 12)
  ret void
}

declare void @__asan_version_mismatch_check_v8()

; Function Attrs: nounwind uwtable
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i64 ptrtoint (ptr @1 to i64), i64 12)
  ret void
}

attributes #0 = { norecurse sanitize_address uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { norecurse sanitize_address uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="true" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind uwtable }
attributes #9 = { nounwind }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"AMD clang version 17.0.0 (ssh://gerritgit/lightning/ec/llvm-project amd-mainline-open 23442 bb485fb956dba03a73b186e06d61302b4cabc0a2)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 100000}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = distinct !{!16, !11}
