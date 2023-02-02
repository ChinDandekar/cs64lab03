# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
# Chinmay Dandekar, 2/2/2023

.text
main:

	# Take input for a from user
	li $v0, 5
	syscall
	move $t0, $v0

	# Take input for b from user
	li $v0, 5
	syscall
	move $t1, $v0

	# Take input for c from user
	li $v0, 5
	syscall
	move $t2, $v0

	# Execute a-b
	sub $t3, $t0, $t1


	# Multiply by 64 by shifting left
	sll $t3, $t3, 6

	# Multiply c by 100
	li $t5, 100
	mult $t2, $t5
	mflo $t2

	# Add the result
	add $a0, $t3, $t2 

	# print
	li $v0, 1
	syscall
exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall

