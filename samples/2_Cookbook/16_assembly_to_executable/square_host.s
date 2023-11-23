	.text
	.file	"square.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x401e848000000000              # double 7.62939453125
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI0_2:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI0_3:
	.long	0x3fcf1aa0                      # float 1.61800003
	.long	0x3fcf1aa0                      # float 1.61800003
	.long	0x3fcf1aa0                      # float 1.61800003
	.long	0x3fcf1aa0                      # float 1.61800003
.LCPI0_4:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
.LCPI0_5:
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	__asan_option_detect_stack_use_after_return@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	.LBB0_1
# %bb.2:
	movl	$1312, %edi                     # imm = 0x520
	callq	__asan_stack_malloc_5@PLT
	movq	%rax, %r14
	movq	%r14, %r15
	testq	%r14, %r14
	jne	.LBB0_5
.LBB0_4:
	movq	%rsp, %r15
	addq	$-1312, %r15                    # imm = 0xFAE0
	andq	$-32, %r15
	movq	%r15, %rsp
.LBB0_5:
	movq	%r15, 120(%rbx)
	leaq	384(%r15), %rax
	movq	%rax, 16(%rbx)                  # 8-byte Spill
	movq	$1102416563, (%r15)             # imm = 0x41B58AB3
	movq	$.L___asan_gen_, 8(%r15)
	movq	$main, 16(%r15)
	movq	%r15, %r13
	shrq	$3, %r13
	movabsq	$-940422221125192968, %rax      # imm = 0xF2F2F2F8F2F2F2F8
	leaq	-16843015(%rax), %rcx
	movq	%rcx, 2147450880(%r13)
	movq	%rax, 2147450888(%r13)
	movabsq	$-940415624055424776, %rcx      # imm = 0xF2F2F8F8F2F2F8F8
	movq	%rcx, 2147450896(%r13)
	movq	%rax, 2147450904(%r13)
	movabsq	$-940422246894601992, %rcx      # imm = 0xF2F2F2F2F2F8F8F8
	movq	%rcx, 2147450912(%r13)
	movq	%rax, 2147450920(%r13)
	leaq	2147450928(%r13), %r12
	movl	$99, %esi
	movq	%r12, %rdi
	callq	__asan_set_shadow_f8@PLT
	movabsq	$-868082074056920077, %rax      # imm = 0xF3F3F3F3F3F3F3F3
	movq	%rax, 2147451027(%r13)
	movq	%rax, 2147451035(%r13)
	movb	$-13, 2147451043(%r13)
	movb	$0, 2147450920(%r13)
	movq	%r13, 24(%rbx)                  # 8-byte Spill
	movb	$0, 2147450924(%r13)
	movq	16(%rbx), %r13                  # 8-byte Reload
	movl	$99, %esi
	movq	%r12, %rdi
	callq	__asan_set_shadow_00@PLT
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	hipGetDeviceProperties
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.9:                                # %_Z16__checkHipErrors10hipError_tPKci.exit
	movq	%r15, 80(%rbx)                  # 8-byte Spill
	movq	%r14, 112(%rbx)                 # 8-byte Spill
	movl	$.str.1, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.str.2, %edi
	movb	$1, %al
	callq	printf
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_10
# %bb.12:                               # %_Z16__checkHipErrors10hipError_tPKci.exit71
	movq	%rax, %r12
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	malloc
	testq	%rax, %rax
	movq	24(%rbx), %r15                  # 8-byte Reload
	je	.LBB0_50
# %bb.13:                               # %vector.body.preheader
	movq	%rax, %r13
	movq	80(%rbx), %rax                  # 8-byte Reload
	leaq	32(%rax), %rcx
	movq	%rcx, 88(%rbx)                  # 8-byte Spill
	leaq	64(%rax), %rcx
	movq	%rcx, 96(%rbx)                  # 8-byte Spill
	leaq	96(%rax), %r11
	leaq	128(%rax), %rcx
	movq	%rcx, 48(%rbx)                  # 8-byte Spill
	leaq	160(%rax), %r9
	leaq	192(%rax), %rcx
	movq	%rcx, 32(%rbx)                  # 8-byte Spill
	leaq	224(%rax), %r10
	leaq	256(%rax), %rcx
	movq	%rcx, 64(%rbx)                  # 8-byte Spill
	leaq	320(%rax), %r14
	leaq	352(%rax), %r8
	addq	$2147450880, %r15               # imm = 0x7FFF8000
	movq	%r12, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax               # imm = 0x7FFF8000
	movdqa	.LCPI0_1(%rip), %xmm0           # xmm0 = [2,3]
	movdqa	.LCPI0_2(%rip), %xmm1           # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%ecx, %ecx
	movaps	.LCPI0_3(%rip), %xmm2           # xmm2 = [1.61800003E+0,1.61800003E+0,1.61800003E+0,1.61800003E+0]
	movdqa	.LCPI0_4(%rip), %xmm3           # xmm3 = [4,4]
	movdqa	.LCPI0_5(%rip), %xmm4           # xmm4 = [8,8]
	.p2align	4, 0x90
.LBB0_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%xmm1, %rdx
	testq	%rdx, %rdx
	js	.LBB0_15
# %bb.16:                               # %vector.body
                                        #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm5, %xmm5
	cvtsi2ss	%rdx, %xmm5
	pshufd	$238, %xmm1, %xmm6              # xmm6 = xmm1[2,3,2,3]
	movq	%xmm6, %rdx
	testq	%rdx, %rdx
	jns	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm6, %xmm6
	cvtsi2ss	%rdx, %xmm6
	addss	%xmm6, %xmm6
	movq	%xmm0, %rdx
	testq	%rdx, %rdx
	jns	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm7, %xmm7
	cvtsi2ss	%rdx, %xmm7
	addss	%xmm7, %xmm7
	pshufd	$238, %xmm0, %xmm8              # xmm8 = xmm0[2,3,2,3]
	movq	%xmm8, %rdx
	testq	%rdx, %rdx
	jns	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm8, %xmm8
	cvtsi2ss	%rdx, %xmm8
	addss	%xmm8, %xmm8
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm5, %xmm5
	cvtsi2ss	%rdx, %xmm5
	addss	%xmm5, %xmm5
	pshufd	$238, %xmm1, %xmm6              # xmm6 = xmm1[2,3,2,3]
	movq	%xmm6, %rdx
	testq	%rdx, %rdx
	js	.LBB0_18
.LBB0_19:                               # %vector.body
                                        #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm6, %xmm6
	cvtsi2ss	%rdx, %xmm6
	movq	%xmm0, %rdx
	testq	%rdx, %rdx
	js	.LBB0_21
.LBB0_22:                               # %vector.body
                                        #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm7, %xmm7
	cvtsi2ss	%rdx, %xmm7
	pshufd	$238, %xmm0, %xmm8              # xmm8 = xmm0[2,3,2,3]
	movq	%xmm8, %rdx
	testq	%rdx, %rdx
	js	.LBB0_24
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm8, %xmm8
	cvtsi2ss	%rdx, %xmm8
.LBB0_26:                               # %vector.body
                                        #   in Loop: Header=BB0_14 Depth=1
	unpcklps	%xmm8, %xmm7                    # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1]
	unpcklps	%xmm6, %xmm5                    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movlhps	%xmm7, %xmm5                    # xmm5 = xmm5[0],xmm7[0]
	addps	%xmm2, %xmm5
	movzbl	(%rax), %edx
	testb	%dl, %dl
	jne	.LBB0_27
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	(%r12,%rcx), %rdi
	addq	$15, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_29
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=1
	movups	%xmm5, (%r12,%rcx)
	movdqa	%xmm1, %xmm6
	paddq	%xmm3, %xmm6
	movq	%xmm6, %rdx
	testq	%rdx, %rdx
	js	.LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm5, %xmm5
	cvtsi2ss	%rdx, %xmm5
	pshufd	$238, %xmm6, %xmm6              # xmm6 = xmm6[2,3,2,3]
	movq	%xmm6, %rdx
	testq	%rdx, %rdx
	jns	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm6, %xmm6
	cvtsi2ss	%rdx, %xmm6
	addss	%xmm6, %xmm6
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_31:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm5, %xmm5
	cvtsi2ss	%rdx, %xmm5
	addss	%xmm5, %xmm5
	pshufd	$238, %xmm6, %xmm6              # xmm6 = xmm6[2,3,2,3]
	movq	%xmm6, %rdx
	testq	%rdx, %rdx
	js	.LBB0_34
.LBB0_35:                               #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm6, %xmm6
	cvtsi2ss	%rdx, %xmm6
.LBB0_36:                               #   in Loop: Header=BB0_14 Depth=1
	movdqa	%xmm0, %xmm8
	paddq	%xmm3, %xmm8
	movq	%xmm8, %rdx
	testq	%rdx, %rdx
	js	.LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm7, %xmm7
	cvtsi2ss	%rdx, %xmm7
	pshufd	$238, %xmm8, %xmm8              # xmm8 = xmm8[2,3,2,3]
	movq	%xmm8, %rdx
	testq	%rdx, %rdx
	jns	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm8, %xmm8
	cvtsi2ss	%rdx, %xmm8
	addss	%xmm8, %xmm8
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_37:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rdx, %rsi
	shrq	%rsi
	andl	$1, %edx
	orq	%rsi, %rdx
	xorps	%xmm7, %xmm7
	cvtsi2ss	%rdx, %xmm7
	addss	%xmm7, %xmm7
	pshufd	$238, %xmm8, %xmm8              # xmm8 = xmm8[2,3,2,3]
	movq	%xmm8, %rdx
	testq	%rdx, %rdx
	js	.LBB0_40
.LBB0_41:                               #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm8, %xmm8
	cvtsi2ss	%rdx, %xmm8
.LBB0_42:                               #   in Loop: Header=BB0_14 Depth=1
	unpcklps	%xmm8, %xmm7                    # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1]
	unpcklps	%xmm6, %xmm5                    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movlhps	%xmm7, %xmm5                    # xmm5 = xmm5[0],xmm7[0]
	addps	%xmm2, %xmm5
	leaq	(%r12,%rcx), %rdi
	addq	$16, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_43
.LBB0_44:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	(%r12,%rcx), %rdi
	addq	$31, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_45
.LBB0_46:                               #   in Loop: Header=BB0_14 Depth=1
	movups	%xmm5, 16(%r12,%rcx)
	paddq	%xmm4, %xmm1
	paddq	%xmm4, %xmm0
	addq	$32, %rcx
	addq	$4, %rax
	cmpq	$4000000, %rcx                  # imm = 0x3D0900
	jne	.LBB0_14
	jmp	.LBB0_47
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	(%r12,%rcx), %rdi
	movl	%edi, %esi
	andb	$7, %sil
	cmpb	%dl, %sil
	jl	.LBB0_28
	jmp	.LBB0_112
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	cmpb	%dl, %sil
	jl	.LBB0_30
	jmp	.LBB0_113
.LBB0_43:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	cmpb	%dl, %sil
	jl	.LBB0_44
	jmp	.LBB0_114
.LBB0_45:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	cmpb	%dl, %sil
	jl	.LBB0_46
# %bb.115:
	movl	$16, %esi
	callq	__asan_report_store_n@PLT
.LBB0_47:                               # %for.cond.cleanup
	movq	%r11, 104(%rbx)                 # 8-byte Spill
	movq	%r10, 40(%rbx)                  # 8-byte Spill
	movq	%r9, 56(%rbx)                   # 8-byte Spill
	movq	%r8, 16(%rbx)                   # 8-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$.str.3, %edi
	movb	$1, %al
	callq	printf
	movl	$4000000, %esi                  # imm = 0x3D0900
	movq	%r14, 72(%rbx)                  # 8-byte Spill
	movq	%r14, %rdi
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB0_48
# %bb.53:                               # %_Z16__checkHipErrors10hipError_tPKci.exit82
	movq	%r15, 24(%rbx)                  # 8-byte Spill
	movl	$4000000, %esi                  # imm = 0x3D0900
	movq	16(%rbx), %rdi                  # 8-byte Reload
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB0_54
# %bb.56:                               # %_Z16__checkHipErrors10hipError_tPKci.exit88
	movl	$str, %edi
	callq	puts@PLT
	movq	72(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %r15
	shrq	$3, %r15
	cmpb	$0, 2147450880(%r15)
	jne	.LBB0_118
# %bb.57:
	movq	(%rdi), %rdi
	movl	$4000000, %edx                  # imm = 0x3D0900
	movq	%r12, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB0_58
# %bb.60:                               # %_Z16__checkHipErrors10hipError_tPKci.exit93
	movl	$str.10, %edi
	callq	puts@PLT
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	leaq	256(%rdx), %rdi
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB0_78
# %bb.61:                               # %kcall.configok
	movq	16(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_120
# %bb.62:
	cmpb	$0, 2147450880(%r15)
	movq	56(%rbx), %rsi                  # 8-byte Reload
	movq	48(%rbx), %r8                   # 8-byte Reload
	movq	40(%rbx), %rcx                  # 8-byte Reload
	movq	104(%rbx), %r9                  # 8-byte Reload
	movq	72(%rbx), %rax                  # 8-byte Reload
	jne	.LBB0_121
# %bb.63:
	movq	(%rdi), %r11
	movq	(%rax), %rax
	movq	24(%rbx), %r14                  # 8-byte Reload
	movb	$0, 4(%r14)
	movb	$0, 8(%r14)
	movb	$0, 12(%r14)
	movw	$1024, 16(%r14)                 # imm = 0x400
	movw	$1024, 20(%r14)                 # imm = 0x400
	movb	$0, 24(%r14)
	movb	$0, 28(%r14)
	movw	$0, 32(%r14)
	movb	$0, 34(%r14)
	movq	88(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %rdx
	shrq	$3, %rdx
	cmpb	$0, 2147450880(%rdx)
	movq	64(%rbx), %r15                  # 8-byte Reload
	movq	96(%rbx), %r10                  # 8-byte Reload
	jne	.LBB0_122
# %bb.64:
	movq	%r11, (%rdi)
	movq	%r10, %rdx
	shrq	$3, %rdx
	cmpb	$0, 2147450880(%rdx)
	jne	.LBB0_123
# %bb.65:
	movq	%rax, (%r10)
	movq	%r9, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_124
# %bb.66:
	movq	$1000000, (%r9)                 # imm = 0xF4240
	movq	%r15, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_125
# %bb.67:
	movq	%rdi, (%r15)
	leaq	8(%r15), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_126
# %bb.68:
	movq	%r10, 8(%r15)
	leaq	16(%r15), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_127
# %bb.69:
	movq	%r9, (%rdi)
	movq	%r8, %rdi
	movq	32(%rbx), %r15                  # 8-byte Reload
	movq	%r15, %rdx
	callq	__hipPopCallConfiguration
	shrq	$3, %r15
	cmpb	$0, 2147450880(%r15)
	jne	.LBB0_128
# %bb.70:
	movq	40(%rbx), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_129
# %bb.71:
	movq	48(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	movq	56(%rbx), %r11                  # 8-byte Reload
	movq	64(%rbx), %r9                   # 8-byte Reload
	jne	.LBB0_130
# %bb.72:
	movq	32(%rbx), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rcx), %r10
	movq	(%rdi), %rsi
	addq	$8, %rdi
	movq	%rdi, %rcx
	shrq	$3, %rcx
	movzbl	2147450880(%rcx), %ecx
	testb	%cl, %cl
	jne	.LBB0_73
.LBB0_74:
	movq	%r11, %rcx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_132
# %bb.75:
	movl	(%rdi), %edx
	movq	(%r11), %rcx
	leaq	8(%r11), %rdi
	movq	%rdi, %r8
	shrq	$3, %r8
	movzbl	2147450880(%r8), %r8d
	testb	%r8b, %r8b
	jne	.LBB0_76
.LBB0_77:
	movl	8(%r11), %r8d
	movl	$_Z13vector_squareIfEvPT_S1_m, %edi
	pushq	%r10
	pushq	%rax
	callq	hipLaunchKernel
	addq	$16, %rsp
	movb	$-8, 4(%r14)
	movb	$-8, 8(%r14)
	movb	$-8, 12(%r14)
	movw	$-1800, 16(%r14)                # imm = 0xF8F8
	movw	$-1800, 20(%r14)                # imm = 0xF8F8
	movb	$-8, 24(%r14)
	movb	$-8, 28(%r14)
	movw	$-1800, 32(%r14)                # imm = 0xF8F8
	movb	$-8, 34(%r14)
.LBB0_78:                               # %kcall.end
	movl	$str.11, %edi
	callq	puts@PLT
	movq	16(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB0_134
# %bb.79:
	movq	(%rdi), %rsi
	movl	$4000000, %edx                  # imm = 0x3D0900
	movq	%r13, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB0_80
# %bb.102:                              # %_Z16__checkHipErrors10hipError_tPKci.exit101
	movl	$str.12, %edi
	callq	puts@PLT
	movq	%r13, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax               # imm = 0x7FFF8000
	xorl	%ecx, %ecx
	movq	24(%rbx), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_103:                              # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	testb	%dl, %dl
	jne	.LBB0_104
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=1
	movss	(%r13,%rcx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	leaq	(%r12,%rcx), %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_106
.LBB0_107:                              #   in Loop: Header=BB0_103 Depth=1
	movss	(%r12,%rcx), %xmm1              # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_108
	jp	.LBB0_108
# %bb.82:                               # %for.cond27
                                        #   in Loop: Header=BB0_103 Depth=1
	leaq	(%rcx,%r13), %rdi
	addq	$4, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_83
.LBB0_84:                               #   in Loop: Header=BB0_103 Depth=1
	movss	4(%r13,%rcx), %xmm0             # xmm0 = mem[0],zero,zero,zero
	leaq	(%r12,%rcx), %rdi
	addq	$4, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_85
.LBB0_86:                               #   in Loop: Header=BB0_103 Depth=1
	movss	4(%r12,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_108
	jp	.LBB0_108
# %bb.87:                               # %for.cond27.1
                                        #   in Loop: Header=BB0_103 Depth=1
	leaq	(%rcx,%r13), %rdi
	addq	$8, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_88
.LBB0_89:                               #   in Loop: Header=BB0_103 Depth=1
	movss	8(%r13,%rcx), %xmm0             # xmm0 = mem[0],zero,zero,zero
	leaq	(%r12,%rcx), %rdi
	addq	$8, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_90
.LBB0_91:                               #   in Loop: Header=BB0_103 Depth=1
	movss	8(%r12,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_108
	jp	.LBB0_108
# %bb.92:                               # %for.cond27.2
                                        #   in Loop: Header=BB0_103 Depth=1
	leaq	(%rcx,%r13), %rdi
	addq	$12, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_93
.LBB0_94:                               #   in Loop: Header=BB0_103 Depth=1
	movss	12(%r13,%rcx), %xmm0            # xmm0 = mem[0],zero,zero,zero
	leaq	(%r12,%rcx), %rdi
	addq	$12, %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movzbl	2147450880(%rdx), %edx
	testb	%dl, %dl
	jne	.LBB0_95
.LBB0_96:                               #   in Loop: Header=BB0_103 Depth=1
	movss	12(%r12,%rcx), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_108
	jp	.LBB0_108
# %bb.97:                               # %for.cond27.3
                                        #   in Loop: Header=BB0_103 Depth=1
	addq	$16, %rcx
	addq	$2, %rax
	cmpq	$4000000, %rcx                  # imm = 0x3D0900
	jne	.LBB0_103
	jmp	.LBB0_98
.LBB0_104:                              #   in Loop: Header=BB0_103 Depth=1
	leaq	(%rcx,%r13), %rdi
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_105
	jmp	.LBB0_142
.LBB0_106:                              #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_107
	jmp	.LBB0_143
.LBB0_83:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_84
	jmp	.LBB0_136
.LBB0_85:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_86
	jmp	.LBB0_137
.LBB0_88:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_89
	jmp	.LBB0_138
.LBB0_90:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_91
	jmp	.LBB0_139
.LBB0_93:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_94
	jmp	.LBB0_140
.LBB0_95:                               #   in Loop: Header=BB0_103 Depth=1
	movl	%edi, %esi
	andb	$7, %sil
	addb	$3, %sil
	cmpb	%dl, %sil
	jl	.LBB0_96
# %bb.141:
	callq	__asan_report_load4@PLT
.LBB0_98:                               # %for.cond.cleanup29
	movl	$str.13, %edi
	callq	puts@PLT
	leaq	48(%r14), %rdi
	movl	$99, %esi
	callq	__asan_set_shadow_f8@PLT
	movb	$-8, 44(%r14)
	movb	$-8, 40(%r14)
	movq	80(%rbx), %rax                  # 8-byte Reload
	movq	$1172321806, (%rax)             # imm = 0x45E0360E
	movq	112(%rbx), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_100
# %bb.99:
	movl	$1312, %esi                     # imm = 0x520
	callq	__asan_stack_free_5@PLT
	jmp	.LBB0_101
.LBB0_1:
	xorl	%r14d, %r14d
	movq	%r14, %r15
	testq	%r14, %r14
	jne	.LBB0_5
	jmp	.LBB0_4
.LBB0_100:
	movl	$164, %esi
	movq	%r14, %rdi
	callq	__asan_set_shadow_00@PLT
.LBB0_101:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_108:                              # %if.then
	.cfi_def_cfa %rbp, 16
	movl	$999, %edi                      # imm = 0x3E7
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_144
# %bb.109:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	$999, %edx                      # imm = 0x3E7
	movq	%rax, %rcx
	movl	$84, %r9d
.LBB0_8:
	xorl	%eax, %eax
	callq	fprintf
	callq	__asan_handle_no_return@PLT
	movl	$1, %edi
	callq	exit
.LBB0_73:
	movl	%edi, %edx
	andb	$7, %dl
	addb	$3, %dl
	cmpb	%cl, %dl
	jl	.LBB0_74
# %bb.131:
	callq	__asan_report_load4@PLT
.LBB0_76:
	movl	%edi, %r15d
	andb	$7, %r15b
	addb	$3, %r15b
	cmpb	%r8b, %r15b
	jl	.LBB0_77
# %bb.133:
	callq	__asan_report_load4@PLT
.LBB0_6:                                # %if.then.i
	movl	%eax, %r12d
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_110
# %bb.7:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	%r12d, %edx
	movq	%rax, %rcx
	movl	$50, %r9d
	jmp	.LBB0_8
.LBB0_10:                               # %if.then.i70
	movl	$2, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_111
# %bb.11:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	$2, %edx
	movq	%rax, %rcx
	movl	$55, %r9d
	jmp	.LBB0_8
.LBB0_50:                               # %if.then.i75
	movl	$2, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_116
# %bb.51:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	$2, %edx
	movq	%rax, %rcx
	movl	$57, %r9d
	jmp	.LBB0_8
.LBB0_48:                               # %if.then.i81
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_49
# %bb.52:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	%r14d, %edx
	movq	%rax, %rcx
	movl	$65, %r9d
	jmp	.LBB0_8
.LBB0_54:                               # %if.then.i87
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_117
# %bb.55:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	%r14d, %edx
	movq	%rax, %rcx
	movl	$66, %r9d
	jmp	.LBB0_8
.LBB0_58:                               # %if.then.i92
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_119
# %bb.59:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	%r14d, %edx
	movq	%rax, %rcx
	movl	$70, %r9d
	jmp	.LBB0_8
.LBB0_80:                               # %if.then.i100
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$stderr, %ecx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB0_135
# %bb.81:
	movq	stderr(%rip), %rdi
	movl	$.str.9, %esi
	movl	$.str, %r8d
	movl	%r14d, %edx
	movq	%rax, %rcx
	movl	$79, %r9d
	jmp	.LBB0_8
.LBB0_112:
	movl	$16, %esi
	callq	__asan_report_store_n@PLT
.LBB0_113:
	movl	$16, %esi
	callq	__asan_report_store_n@PLT
.LBB0_114:
	movl	$16, %esi
	callq	__asan_report_store_n@PLT
.LBB0_137:
	callq	__asan_report_load4@PLT
.LBB0_136:
	callq	__asan_report_load4@PLT
.LBB0_142:
	callq	__asan_report_load4@PLT
.LBB0_143:
	callq	__asan_report_load4@PLT
.LBB0_140:
	callq	__asan_report_load4@PLT
.LBB0_139:
	callq	__asan_report_load4@PLT
.LBB0_138:
	callq	__asan_report_load4@PLT
.LBB0_118:
	callq	__asan_report_load8@PLT
.LBB0_134:
	callq	__asan_report_load8@PLT
.LBB0_120:
	callq	__asan_report_load8@PLT
.LBB0_121:
	movq	%rax, %rdi
	callq	__asan_report_load8@PLT
.LBB0_122:
	callq	__asan_report_store8@PLT
.LBB0_123:
	movq	%r10, %rdi
	callq	__asan_report_store8@PLT
.LBB0_124:
	movq	%r9, %rdi
	callq	__asan_report_store8@PLT
.LBB0_125:
	movq	%r15, %rdi
	callq	__asan_report_store8@PLT
.LBB0_126:
	callq	__asan_report_store8@PLT
.LBB0_127:
	callq	__asan_report_store8@PLT
.LBB0_128:
	movq	32(%rbx), %rdi                  # 8-byte Reload
	callq	__asan_report_load8@PLT
.LBB0_129:
	movq	%rcx, %rdi
	callq	__asan_report_load8@PLT
.LBB0_130:
	callq	__asan_report_load8@PLT
.LBB0_132:
	movq	%r11, %rdi
	callq	__asan_report_load8@PLT
.LBB0_144:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_110:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_111:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_116:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_49:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_117:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_119:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.LBB0_135:
	movl	$stderr, %edi
	callq	__asan_report_load8@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._Z28__device_stub__vector_squareIfEvPT_S1_m,"axG",@progbits,_Z28__device_stub__vector_squareIfEvPT_S1_m,comdat
	.weak	_Z28__device_stub__vector_squareIfEvPT_S1_m # -- Begin function _Z28__device_stub__vector_squareIfEvPT_S1_m
	.p2align	4, 0x90
	.type	_Z28__device_stub__vector_squareIfEvPT_S1_m,@function
_Z28__device_stub__vector_squareIfEvPT_S1_m: # @_Z28__device_stub__vector_squareIfEvPT_S1_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$96, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	$0, (%rbx)
	movq	__asan_option_detect_stack_use_after_return@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	movq	%rdx, 24(%rbx)                  # 8-byte Spill
	movq	%rsi, %r13
	je	.LBB1_1
# %bb.2:
	movl	$256, %edi                      # imm = 0x100
	callq	__asan_stack_malloc_2@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB1_5
.LBB1_4:
	movq	%rsp, %r12
	addq	$-256, %r12
	andq	$-32, %r12
	movq	%r12, %rsp
.LBB1_5:
	movq	%r12, 56(%rbx)
	leaq	32(%r12), %rdi
	movq	$1102416563, (%r12)             # imm = 0x41B58AB3
	movq	$.L___asan_gen_.14, 8(%r12)
	movq	$_Z28__device_stub__vector_squareIfEvPT_S1_m, 16(%r12)
	movq	%r12, %rdx
	shrq	$3, %rdx
	movabsq	$-940423286293925391, %rcx      # imm = 0xF2F2F200F1F1F1F1
	movq	%rcx, 2147450880(%rdx)
	movabsq	$68384065575908082, %rcx        # imm = 0xF2F2F200F2F2F2
	movq	%rcx, 2147450889(%rdx)
	movabsq	$68383043373691396, %rcx        # imm = 0xF2F20400F2F204
	movq	%rcx, 2147450897(%rdx)
	movl	$15921906, 2147450905(%rdx)     # imm = 0xF2F2F2
	movw	$-3085, 2147450909(%rdx)        # imm = 0xF3F3
	movb	$-13, 2147450911(%rdx)
	movq	%rdi, %rcx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB1_23
# %bb.6:
	leaq	64(%r12), %r14
	movq	%r15, (%rdi)
	movq	%r14, %rcx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB1_24
# %bb.7:
	movq	%rdi, 16(%rbx)                  # 8-byte Spill
	movq	%rdx, 32(%rbx)                  # 8-byte Spill
	movq	%rax, 48(%rbx)                  # 8-byte Spill
	leaq	96(%r12), %rdi
	movq	%r13, (%r14)
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_25
# %bb.8:
	movq	24(%rbx), %rax                  # 8-byte Reload
	movq	%rdi, 40(%rbx)                  # 8-byte Spill
	movq	%rax, (%rdi)
	movq	%rsp, %r15
	addq	$-96, %r15
	andq	$-32, %r15
	movq	%r15, %rsp
	leaq	32(%r15), %r13
	movl	$24, %esi
	movq	%r13, %rdi
	callq	__asan_alloca_poison@PLT
	movq	%r15, (%rbx)
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_26
# %bb.9:
	movq	16(%rbx), %rax                  # 8-byte Reload
	movq	%rax, (%r13)
	leaq	8(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_27
# %bb.10:
	movq	%r14, 8(%r13)
	movq	%r13, 24(%rbx)                  # 8-byte Spill
	leaq	16(%r13), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_28
# %bb.11:
	leaq	128(%r12), %r13
	leaq	160(%r12), %rsi
	leaq	192(%r12), %r14
	leaq	224(%r12), %r15
	movq	40(%rbx), %rax                  # 8-byte Reload
	movq	%rax, (%rdi)
	movq	%r13, %rdi
	movq	%rsi, 16(%rbx)                  # 8-byte Spill
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	__hipPopCallConfiguration
	movq	%r14, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_29
# %bb.12:
	movq	%r15, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_30
# %bb.13:
	movq	%r13, %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	jne	.LBB1_31
# %bb.14:
	movq	(%r14), %rax
	movq	(%r15), %r10
	movq	(%r13), %rsi
	addq	$8, %r13
	movq	%r13, %rcx
	shrq	$3, %rcx
	movzbl	2147450880(%rcx), %ecx
	testb	%cl, %cl
	jne	.LBB1_15
.LBB1_16:
	movq	16(%rbx), %rdi                  # 8-byte Reload
	movq	%rdi, %rcx
	shrq	$3, %rcx
	cmpb	$0, 2147450880(%rcx)
	jne	.LBB1_33
# %bb.17:
	movl	(%r13), %edx
	movq	(%rdi), %rcx
	addq	$8, %rdi
	movq	%rdi, %r8
	shrq	$3, %r8
	movzbl	2147450880(%r8), %r9d
	testb	%r9b, %r9b
	jne	.LBB1_18
.LBB1_19:
	movl	168(%r12), %r8d
	movl	$_Z13vector_squareIfEvPT_S1_m, %edi
	movq	24(%rbx), %r9                   # 8-byte Reload
	pushq	%r10
	pushq	%rax
	callq	hipLaunchKernel
	addq	$16, %rsp
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	__asan_allocas_unpoison@PLT
	movq	$1172321806, (%r12)             # imm = 0x45E0360E
	movq	48(%rbx), %rcx                  # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_21
# %bb.20:
	movabsq	$-723401728380766731, %rax      # imm = 0xF5F5F5F5F5F5F5F5
	movq	32(%rbx), %rdx                  # 8-byte Reload
	movq	%rax, 2147450880(%rdx)
	movq	%rax, 2147450888(%rdx)
	movq	%rax, 2147450896(%rdx)
	movq	%rax, 2147450904(%rdx)
	movq	248(%rcx), %rax
	movb	$0, (%rax)
	jmp	.LBB1_22
.LBB1_1:
	xorl	%eax, %eax
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB1_5
	jmp	.LBB1_4
.LBB1_21:
	movq	32(%rbx), %rax                  # 8-byte Reload
	movq	$0, 2147450880(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2147450889(%rax)
	movl	$0, 2147450905(%rax)
	movw	$0, 2147450909(%rax)
	movb	$0, 2147450911(%rax)
.LBB1_22:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_15:
	.cfi_def_cfa %rbp, 16
	movl	%r13d, %edx
	andb	$7, %dl
	addb	$3, %dl
	cmpb	%cl, %dl
	jl	.LBB1_16
# %bb.32:
	movq	%r13, %rdi
	callq	__asan_report_load4@PLT
.LBB1_18:
	movl	%edi, %r8d
	andb	$7, %r8b
	addb	$3, %r8b
	cmpb	%r9b, %r8b
	jl	.LBB1_19
# %bb.34:
	callq	__asan_report_load4@PLT
.LBB1_23:
	callq	__asan_report_store8@PLT
.LBB1_24:
	movq	%r14, %rdi
	callq	__asan_report_store8@PLT
.LBB1_25:
	callq	__asan_report_store8@PLT
.LBB1_26:
	movq	%r13, %rdi
	callq	__asan_report_store8@PLT
.LBB1_27:
	callq	__asan_report_store8@PLT
.LBB1_28:
	callq	__asan_report_store8@PLT
.LBB1_29:
	movq	%r14, %rdi
	callq	__asan_report_load8@PLT
.LBB1_30:
	movq	%r15, %rdi
	callq	__asan_report_load8@PLT
.LBB1_31:
	movq	%r13, %rdi
	callq	__asan_report_load8@PLT
.LBB1_33:
	callq	__asan_report_load8@PLT
.Lfunc_end1:
	.size	_Z28__device_stub__vector_squareIfEvPT_S1_m, .Lfunc_end1-_Z28__device_stub__vector_squareIfEvPT_S1_m
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	__hip_gpubin_handle(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_2
# %bb.1:                                # %if
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rdi
	movq	%rax, __hip_gpubin_handle(%rip)
.LBB2_2:                                # %exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z13vector_squareIfEvPT_S1_m, %esi
	movl	$__unnamed_1, %edx
	movl	$__unnamed_1, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end2:
	.size	__hip_module_ctor, .Lfunc_end2-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__hip_gpubin_handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB3_2
# %bb.1:                                # %if
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle(%rip)
.LBB3_2:                                # %exit
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	__hip_module_dtor, .Lfunc_end3-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_ctor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function asan.module_ctor
	.type	asan.module_ctor,@function
asan.module_ctor:                       # @asan.module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__asan_init@PLT
	callq	__asan_version_mismatch_check_v8@PLT
	movl	$__unnamed_2, %edi
	movl	$12, %esi
	callq	__asan_register_globals@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	asan.module_ctor, .Lfunc_end4-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_dtor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function asan.module_dtor
	.type	asan.module_dtor,@function
asan.module_dtor:                       # @asan.module_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$__unnamed_2, %edi
	movl	$12, %esi
	callq	__asan_unregister_globals@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	asan.module_dtor, .Lfunc_end5-asan.module_dtor
	.cfi_endproc
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.p2align	5, 0x0
.str:
	.asciz	"square.cpp"
	.zero	21
	.size	.str, 32

	.type	.str.1,@object                  # @.str.1
	.p2align	5, 0x0
.str.1:
	.asciz	"info: running on device %s\n"
	.zero	36
	.size	.str.1, 64

	.type	.str.2,@object                  # @.str.2
	.p2align	5, 0x0
.str.2:
	.asciz	"info: allocate host mem (%6.2f MB)\n"
	.zero	60
	.size	.str.2, 96

	.type	.str.3,@object                  # @.str.3
	.p2align	5, 0x0
.str.3:
	.asciz	"info: allocate device mem (%6.2f MB)\n"
	.zero	58
	.size	.str.3, 96

	.type	_Z13vector_squareIfEvPT_S1_m,@object # @_Z13vector_squareIfEvPT_S1_m
	.section	.rodata._Z13vector_squareIfEvPT_S1_m,"aG",@progbits,_Z13vector_squareIfEvPT_S1_m,comdat
	.weak	_Z13vector_squareIfEvPT_S1_m
	.p2align	3, 0x0
_Z13vector_squareIfEvPT_S1_m:
	.quad	_Z28__device_stub__vector_squareIfEvPT_S1_m
	.size	_Z13vector_squareIfEvPT_S1_m, 8

	.type	.str.9,@object                  # @.str.9
	.section	.rodata,"a",@progbits
	.p2align	5, 0x0
.str.9:
	.asciz	"checkHipErrors() HIP API error = %04d \"%s\" from file <%s>, line %i.\n"
	.zero	59
	.size	.str.9, 128

	.type	__unnamed_1,@object             # @0
	.p2align	5, 0x0
__unnamed_1:
	.asciz	"_Z13vector_squareIfEvPT_S1_m"
	.zero	35
	.size	__unnamed_1, 64

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	5, 0x0
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	__hip_fatbin
	.quad	0
	.zero	40
	.size	__hip_fatbin_wrapper, 64

	.hidden	__hip_gpubin_handle             # @__hip_gpubin_handle
	.type	__hip_gpubin_handle,@object
	.section	.bss.__hip_gpubin_handle,"aGw",@nobits,__hip_gpubin_handle,comdat
	.weak	__hip_gpubin_handle
	.p2align	3, 0x0
__hip_gpubin_handle:
	.quad	0
	.size	__hip_gpubin_handle, 8

	.type	str,@object                     # @str
	.section	.rodata,"a",@progbits
	.p2align	5, 0x0
str:
	.asciz	"info: copy Host2Device"
	.zero	41
	.size	str, 64

	.type	str.10,@object                  # @str.10
	.p2align	5, 0x0
str.10:
	.asciz	"info: launch 'vector_square' kernel"
	.zero	60
	.size	str.10, 96

	.type	str.11,@object                  # @str.11
	.p2align	5, 0x0
str.11:
	.asciz	"info: copy Device2Host"
	.zero	41
	.size	str.11, 64

	.type	str.12,@object                  # @str.12
	.p2align	5, 0x0
str.12:
	.asciz	"info: checkHipErrors result"
	.zero	36
	.size	str.12, 64

	.type	str.13,@object                  # @str.13
	.p2align	5, 0x0
str.13:
	.asciz	"PASSED!"
	.zero	24
	.size	str.13, 32

	.type	.L___asan_gen_,@object          # @___asan_gen_
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_:
	.asciz	"11 32 8 10 C_d.addr.i 64 8 10 A_d.addr.i 96 8 8 N.addr.i 128 12 10 grid_dim.i 160 12 11 block_dim.i 192 8 12 shmem_size.i 224 8 8 stream.i 256 24 14 kernel_args1.i 320 8 3 A_d 352 8 3 C_d 384 792 5 props"
	.size	.L___asan_gen_, 204

	.type	.L___asan_gen_.14,@object       # @___asan_gen_.14
.L___asan_gen_.14:
	.asciz	"7 32 8 8 C_d.addr 64 8 8 A_d.addr 96 8 6 N.addr 128 12 8 grid_dim 160 12 9 block_dim 192 8 10 shmem_size 224 8 6 stream"
	.size	.L___asan_gen_.14, 120

	.type	.L___asan_gen_.15,@object       # @___asan_gen_.15
	.section	.rodata,"a",@progbits
.L___asan_gen_.15:
	.asciz	"square.cpp"
	.size	.L___asan_gen_.15, 11

	.type	.L___asan_gen_.16,@object       # @___asan_gen_.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_.16:
	.asciz	".str"
	.size	.L___asan_gen_.16, 5

	.type	.L___asan_gen_.17,@object       # @___asan_gen_.17
.L___asan_gen_.17:
	.asciz	".str.1"
	.size	.L___asan_gen_.17, 7

	.type	.L___asan_gen_.18,@object       # @___asan_gen_.18
.L___asan_gen_.18:
	.asciz	".str.2"
	.size	.L___asan_gen_.18, 7

	.type	.L___asan_gen_.19,@object       # @___asan_gen_.19
.L___asan_gen_.19:
	.asciz	".str.3"
	.size	.L___asan_gen_.19, 7

	.type	.L___asan_gen_.20,@object       # @___asan_gen_.20
.L___asan_gen_.20:
	.asciz	".str.9"
	.size	.L___asan_gen_.20, 7

	.type	.L___asan_gen_.21,@object       # @___asan_gen_.21
.L___asan_gen_.21:
	.zero	1
	.size	.L___asan_gen_.21, 1

	.type	.L___asan_gen_.22,@object       # @___asan_gen_.22
.L___asan_gen_.22:
	.asciz	"__hip_fatbin_wrapper"
	.size	.L___asan_gen_.22, 21

	.type	.L___asan_gen_.23,@object       # @___asan_gen_.23
.L___asan_gen_.23:
	.asciz	"str"
	.size	.L___asan_gen_.23, 4

	.type	.L___asan_gen_.24,@object       # @___asan_gen_.24
.L___asan_gen_.24:
	.asciz	"str.10"
	.size	.L___asan_gen_.24, 7

	.type	.L___asan_gen_.25,@object       # @___asan_gen_.25
.L___asan_gen_.25:
	.asciz	"str.11"
	.size	.L___asan_gen_.25, 7

	.type	.L___asan_gen_.26,@object       # @___asan_gen_.26
.L___asan_gen_.26:
	.asciz	"str.12"
	.size	.L___asan_gen_.26, 7

	.type	.L___asan_gen_.27,@object       # @___asan_gen_.27
.L___asan_gen_.27:
	.asciz	"str.13"
	.size	.L___asan_gen_.27, 7

	.type	__unnamed_2,@object             # @1
	.data
	.p2align	4, 0x0
__unnamed_2:
	.quad	.L__unnamed_3
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.16
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_4
	.quad	28                              # 0x1c
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.17
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_5
	.quad	36                              # 0x24
	.quad	96                              # 0x60
	.quad	.L___asan_gen_.18
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_6
	.quad	38                              # 0x26
	.quad	96                              # 0x60
	.quad	.L___asan_gen_.19
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_7
	.quad	69                              # 0x45
	.quad	128                             # 0x80
	.quad	.L___asan_gen_.20
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_8
	.quad	29                              # 0x1d
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.21
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_9
	.quad	24                              # 0x18
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.22
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_10
	.quad	23                              # 0x17
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.23
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_11
	.quad	36                              # 0x24
	.quad	96                              # 0x60
	.quad	.L___asan_gen_.24
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_12
	.quad	23                              # 0x17
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.25
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_13
	.quad	28                              # 0x1c
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.26
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	.L__unnamed_14
	.quad	8                               # 0x8
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.27
	.quad	.L___asan_gen_.15
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	__unnamed_2, 768

	.section	.init_array.1,"aw",@init_array
	.p2align	3, 0x90
	.quad	asan.module_ctor
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x90
	.quad	__hip_module_ctor
	.section	.fini_array.1,"aw",@fini_array
	.p2align	3, 0x90
	.quad	asan.module_dtor
.set .L__unnamed_3, .str
.set .L__unnamed_4, .str.1
.set .L__unnamed_5, .str.2
.set .L__unnamed_6, .str.3
.set .L__unnamed_7, .str.9
.set .L__unnamed_8, __unnamed_1
.set .L__unnamed_9, __hip_fatbin_wrapper
.set .L__unnamed_10, str
.set .L__unnamed_11, str.10
.set .L__unnamed_12, str.11
.set .L__unnamed_13, str.12
.set .L__unnamed_14, str.13
	.ident	"AMD clang version 17.0.0 (ssh://gerritgit/lightning/ec/llvm-project amd-mainline-open 23442 bb485fb956dba03a73b186e06d61302b4cabc0a2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z28__device_stub__vector_squareIfEvPT_S1_m
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym __asan_report_load4
	.addrsig_sym __asan_report_load8
	.addrsig_sym __asan_report_store_n
	.addrsig_sym __asan_report_store8
	.addrsig_sym __asan_handle_no_return
	.addrsig_sym __asan_stack_malloc_2
	.addrsig_sym __asan_stack_malloc_5
	.addrsig_sym __asan_stack_free_5
	.addrsig_sym __asan_set_shadow_00
	.addrsig_sym __asan_set_shadow_f8
	.addrsig_sym __asan_alloca_poison
	.addrsig_sym __asan_allocas_unpoison
	.addrsig_sym __asan_register_globals
	.addrsig_sym __asan_unregister_globals
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
	.addrsig_sym asan.module_dtor
	.addrsig_sym .str
	.addrsig_sym .str.1
	.addrsig_sym .str.2
	.addrsig_sym .str.3
	.addrsig_sym _Z13vector_squareIfEvPT_S1_m
	.addrsig_sym .str.9
	.addrsig_sym __unnamed_1
	.addrsig_sym __hip_fatbin
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym str
	.addrsig_sym str.10
	.addrsig_sym str.11
	.addrsig_sym str.12
	.addrsig_sym str.13
	.addrsig_sym __asan_option_detect_stack_use_after_return
	.addrsig_sym .L___asan_gen_.15
	.addrsig_sym __unnamed_2
	.addrsig_sym .L__unnamed_3
	.addrsig_sym .L__unnamed_4
	.addrsig_sym .L__unnamed_5
	.addrsig_sym .L__unnamed_6
	.addrsig_sym .L__unnamed_7
	.addrsig_sym .L__unnamed_8
	.addrsig_sym .L__unnamed_9
	.addrsig_sym .L__unnamed_10
	.addrsig_sym .L__unnamed_11
	.addrsig_sym .L__unnamed_12
	.addrsig_sym .L__unnamed_13
	.addrsig_sym .L__unnamed_14
