	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/920908-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push12=, 0
	i32.const	$push9=, 0
	i32.load	$push10=, __stack_pointer($pop9)
	i32.const	$push11=, 16
	i32.sub 	$push16=, $pop10, $pop11
	i32.store	$push20=, __stack_pointer($pop12), $pop16
	tee_local	$push19=, $3=, $pop20
	i32.store	$push18=, 12($3), $1
	tee_local	$push17=, $1=, $pop18
	i32.const	$push0=, 4
	i32.add 	$push1=, $pop17, $pop0
	i32.store	$2=, 12($pop19), $pop1
	block
	i32.load	$push2=, 0($1)
	i32.const	$push3=, 10
	i32.ne  	$push4=, $pop2, $pop3
	br_if   	0, $pop4        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push5=, 8
	i32.add 	$push6=, $1, $pop5
	i32.store	$drop=, 12($3), $pop6
	i32.load	$push7=, 0($2)
	i32.const	$push21=, 20
	i32.ne  	$push8=, $pop7, $pop21
	br_if   	0, $pop8        # 0: down to label0
# BB#2:                                 # %if.end7
	i32.const	$push15=, 0
	i32.const	$push13=, 16
	i32.add 	$push14=, $3, $pop13
	i32.store	$drop=, __stack_pointer($pop15), $pop14
	i32.const	$push22=, 20
	return  	$pop22
.LBB0_3:                                # %if.then6
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 16
	i32.sub 	$push6=, $pop3, $pop4
	i32.store	$push8=, __stack_pointer($pop5), $pop6
	tee_local	$push7=, $0=, $pop8
	i64.const	$push0=, 85899345930
	i64.store	$drop=, 0($pop7), $pop0
	i32.call	$drop=, f@FUNCTION, $0, $0
	i32.const	$push1=, 0
	call    	exit@FUNCTION, $pop1
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
	.functype	abort, void
	.functype	exit, void, i32
