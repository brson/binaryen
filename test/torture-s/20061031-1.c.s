	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20061031-1.c"
	.section	.text.ff,"ax",@progbits
	.hidden	ff
	.globl	ff
	.type	ff,@function
ff:                                     # @ff
	.param  	i32
# BB#0:                                 # %entry
	#APP
	#NO_APP
	return
.Lfunc_end0:
	.size	ff, .Lfunc_end0-ff

	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push0=, 2
	i32.add 	$1=, $0, $pop0
	call    	ff, $0
	i32.const	$2=, 65535
	block   	.LBB1_2
	i32.and 	$push1=, $1, $2
	br_if   	$pop1, .LBB1_2
# BB#1:                                 # %if.then
	#APP
	#NO_APP
.LBB1_2:                                # %for.inc
	call    	ff, $0
	block   	.LBB1_4
	i32.add 	$push2=, $1, $0
	i32.and 	$push3=, $pop2, $2
	br_if   	$pop3, .LBB1_4
# BB#3:                                 # %if.then.1
	#APP
	#NO_APP
.LBB1_4:                                # %for.inc.1
	return
.Lfunc_end1:
	.size	f, .Lfunc_end1-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, -1
	call    	f, $pop0
	i32.const	$push1=, 0
	return  	$pop1
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	nunmap                  # @nunmap
	.type	nunmap,@object
	.section	.rodata.nunmap,"a",@progbits
	.globl	nunmap
nunmap:
	.ascii	"\021\377\001"
	.size	nunmap, 3


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits