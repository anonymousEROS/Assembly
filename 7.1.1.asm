	 .data
prompt1: .asciiz "Enter a number "
prompt2: .asciiz "\nEnter another number "
message1: .asciiz "\nYou entered "
message2: .asciiz " and "
	  .text
	  
.globl main

main:
	
	li	$v0,4
	la	$a0,prompt1
	syscall
	
	
	li	$v0, 5
	syscall 
	move 	$t0, $v0
	
	
	li	$v0, 4
	la	$a0,prompt2
	syscall
	
	li	$v0, 5
	syscall 
	move 	$t1, $v0
	
	
	li	$v0, 4
	la	$a0,message1
	syscall
	
	li	$v0, 1
	move	$a0, $t0
	syscall
	
	li	$v0, 4
	la	$a0,message2
	syscall
	
	
	li	$v0, 1
	move	$a0, $t1
	syscall
	
	
	li $v0, 10 
	syscall
	
