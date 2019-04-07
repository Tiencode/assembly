.data
	msg1: .asciiz "Enter A: "
	msg2: .asciiz "Enter B: "
	msg3: .asciiz "A + B = "
	msg4: .asciiz "A - B = "
	msg5: .asciiz "A / B = "
	msg6: .asciiz "A * B = "
	newline: .asciiz "\n"
	
.text
.globl main
main:
	#print A
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	#print B
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	#math_sum
	add $t2, $t0, $t1
	
	#print msg3
	li $v0, 4
	la $a0, msg3
	syscall
	
	#print sum
	li $v0, 1
	move $a0, $t2
	syscall
	
	#print /n
	li $v0, 4
	la $a0, newline
	syscall
	
	#math_sub
	sub $t3, $t0, $t1
	
	#print_msg4
	li $v0, 4
	la $a0, msg4
	syscall
	
	#print_sub
	li $v0, 1
	move $a0, $t3
	syscall
	
	#print /n
	li $v0, 4
	la $a0, newline
	syscall
	
	#math_div
	div $t4, $t0, $t1
	
	#print_msg5
	li $v0, 4
	la $a0, msg5
	syscall
	
	#print_div
	li $v0, 1
	move $a0, $t4
	syscall
	
	#print /n
	li $v0, 4
	la $a0, newline
	syscall
	
	#math_mul
	mul $t5, $t0, $t1
	
	#print_msg6
	li $v0, 4
	la $a0, msg6
	syscall
	
	#print_mul
	li $v0,1
	move $a0, $t5
	syscall
	
	#print /n 
	li $v0, 4
	la $a0, newline
	syscall
	
	exit:
	li $v0, 10
	syscall