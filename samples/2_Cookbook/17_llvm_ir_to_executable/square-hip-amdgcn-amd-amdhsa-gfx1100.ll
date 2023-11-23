; ModuleID = 'square-hip-amdgcn-amd-amdhsa-gfx1100.bc'
source_filename = "square.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockDim>::__X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::__X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_GridDim>::__X" = type { i8 }

$_Z13vector_squareIfEvPT_S1_m = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE = comdat any

@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockDim>::__X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::__X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_GridDim>::__X" undef, comdat, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite)
define protected amdgpu_kernel void @_Z13vector_squareIfEvPT_S1_m(ptr addrspace(1) nocapture writeonly %C_d.coerce, ptr addrspace(1) nocapture readonly %A_d.coerce, i64 %N) local_unnamed_addr #0 comdat {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %1 = tail call ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %2 = load i32, ptr addrspace(4) %1, align 4, !tbaa !7
  %3 = getelementptr inbounds i16, ptr addrspace(4) %1, i64 6
  %4 = load i16, ptr addrspace(4) %3, align 4, !tbaa !11
  %conv.i.i = zext i16 %4 to i32
  %mul = mul i32 %0, %conv.i.i
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !13, !noundef !14
  %add = add i32 %mul, %5
  %conv = zext i32 %add to i64
  %6 = mul i32 %2, %conv.i.i
  %conv7 = zext i32 %6 to i64
  %cmp17 = icmp ult i64 %conv, %N
  br i1 %cmp17, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i64 [ %add11, %for.body ], [ %conv, %entry ]
  %arrayidx = getelementptr inbounds float, ptr addrspace(1) %A_d.coerce, i64 %i.018
  %7 = load float, ptr addrspace(1) %arrayidx, align 4, !tbaa !15
  %mul9 = fmul contract float %7, %7
  %arrayidx10 = getelementptr inbounds float, ptr addrspace(1) %C_d.coerce, i64 %i.018
  store float %mul9, ptr addrspace(1) %arrayidx10, align 4, !tbaa !15
  %add11 = add i64 %i.018, %conv7
  %cmp = icmp ult i64 %add11, %N
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.x() #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) "amdgpu-flat-work-group-size"="1,1024" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx1100" "target-features"="+16-bit-insts,+atomic-fadd-rtn-insts,+ci-insts,+dl-insts,+dot10-insts,+dot5-insts,+dot7-insts,+dot8-insts,+dot9-insts,+dpp,+gfx10-3-insts,+gfx10-insts,+gfx11-insts,+gfx8-insts,+gfx9-insts,+wavefrontsize32" "uniform-work-group-size"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!opencl.ocl.version = !{!5}
!llvm.ident = !{!6}

!0 = !{i32 4, !"amdgpu_hostcall", i32 1}
!1 = !{i32 1, !"amdgpu_code_object_version", i32 500}
!2 = !{i32 1, !"amdgpu_printf_kind", !"hostcall"}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, i32 0}
!6 = !{!"AMD clang version 17.0.0 (ssh://gerritgit/lightning/ec/llvm-project amd-mainline-open 23442 bb485fb956dba03a73b186e06d61302b4cabc0a2)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{i32 0, i32 1024}
!14 = !{}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C++ TBAA"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
