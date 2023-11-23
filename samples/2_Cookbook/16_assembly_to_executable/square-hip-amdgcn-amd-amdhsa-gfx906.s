	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.section	.text._Z13vector_squareIfEvPT_S1_m,#alloc,#execinstr
	.protected	_Z13vector_squareIfEvPT_S1_m ; -- Begin function _Z13vector_squareIfEvPT_S1_m
	.globl	_Z13vector_squareIfEvPT_S1_m
	.p2align	8
	.type	_Z13vector_squareIfEvPT_S1_m,@function
_Z13vector_squareIfEvPT_S1_m:           ; @_Z13vector_squareIfEvPT_S1_m
; %bb.0:                                ; %entry
	s_load_dword s2, s[4:5], 0x24
	s_load_dwordx2 s[12:13], s[4:5], 0x10
	s_add_u32 s0, s4, 24
	s_addc_u32 s1, s5, 0
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s2, s2, 0xffff
	s_mul_i32 s6, s6, s2
	v_add_u32_e32 v0, s6, v0
	v_cmp_gt_u64_e32 vcc, s[12:13], v[0:1]
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB0_3
; %bb.1:                                ; %for.body.preheader
	s_load_dword s3, s[0:1], 0x0
	s_load_dwordx4 s[8:11], s[4:5], 0x0
	s_mov_b32 s5, 0
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	s_mov_b64 s[14:15], 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s3, s2
	s_lshl_b64 s[6:7], s[4:5], 2
.LBB0_2:                                ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	v_mov_b32_e32 v5, s11
	v_add_co_u32_e32 v4, vcc, s10, v2
	v_addc_co_u32_e32 v5, vcc, v5, v3, vcc
	global_load_dword v6, v[4:5], off
	v_mov_b32_e32 v5, s9
	v_mov_b32_e32 v7, s5
	v_add_co_u32_e32 v0, vcc, s4, v0
	v_mov_b32_e32 v8, s7
	v_add_co_u32_e64 v4, s[0:1], s8, v2
	v_add_co_u32_e64 v2, s[2:3], s6, v2
	v_addc_co_u32_e64 v5, s[0:1], v5, v3, s[0:1]
	v_addc_co_u32_e32 v1, vcc, v1, v7, vcc
	v_addc_co_u32_e64 v3, vcc, v3, v8, s[2:3]
	v_cmp_le_u64_e32 vcc, s[12:13], v[0:1]
	s_or_b64 s[14:15], vcc, s[14:15]
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v6, v6, v6
	global_store_dword v[4:5], v6, off
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execnz .LBB0_2
.LBB0_3:                                ; %Flow24
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel _Z13vector_squareIfEvPT_S1_m
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 280
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 9
		.amdhsa_next_free_sgpr 16
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z13vector_squareIfEvPT_S1_m,#alloc,#execinstr
.Lfunc_end0:
	.size	_Z13vector_squareIfEvPT_S1_m, .Lfunc_end0-_Z13vector_squareIfEvPT_S1_m
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 228
; NumSgprs: 20
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 9
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE ; @_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE
	.type	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE
_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE, 1

	.ident	"AMD clang version 17.0.0 (ssh://gerritgit/lightning/ec/llvm-project amd-mainline-open 23442 bb485fb956dba03a73b186e06d61302b4cabc0a2)"
	.section	".note.GNU-stack"
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .name:           C_d.coerce
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .name:           A_d.coerce
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .name:           N
        .offset:         16
        .size:           8
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         28
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         36
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         38
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         40
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         42
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         44
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         46
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         88
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 280
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z13vector_squareIfEvPT_S1_m
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z13vector_squareIfEvPT_S1_m.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
