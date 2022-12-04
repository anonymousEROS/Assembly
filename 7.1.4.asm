	.data
prompt1: .asciiz "Enter a number: "
prompt2: .asciiz "\nEnter another number: "
message: .asciiz "\nThe difference is "
	.text
	
.globl main

main:

li $v0,4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0,4
	la $a0, prompt2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	sub $a1, $t0, $t1
	li $v0, 4
	la $a0, message
	syscall
	
	li	$v0, 1
	move	$a0, $a1
	syscall
	
	li $v0, 10
	syscall
