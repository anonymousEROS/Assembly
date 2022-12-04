#.eqv genID 1	
	.data
Message: .asciiz "\n The random number you generated was: "
genID: .word 1
seed:	 .word 1235
	 .text
	.globl main

main:
	
	lw $a0, genID
	lw $a1, seed
	li $v0, 40
	syscall
	
	
	li $v0, 42
	li $a1, 129
	syscall
	move $t0, $a0
	
	li $v0, 4
	la $a0,Message
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 42
	li $a1, 17
	syscall
	move $t0, $a0
	
	li $v0, 4
	la $a0,Message
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	lw $a0, genID
	lw $a1, seed
	li $v0, 40
	syscall
	
	li $v0, 42
	li $a1, 129
	syscall
	move $t0, $a0
	
	li $v0, 4
	la $a0,Message
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
		
	
	li $v0, 10
	syscall




