	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_list_init
	.p2align	4, 0x90
_list_init:                             ## @list_init
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_list_head_append
	.p2align	4, 0x90
_list_head_append:                      ## @list_head_append
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, (%rdx)
	jne	LBB1_2
## BB#1:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	LBB1_3
LBB1_2:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
LBB1_3:
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
