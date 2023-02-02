# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	enter_int: .asciiz "Enter an integer:\n"
	hello_world: .asciiz "Hello World 2023!\n"
	magic_number: .asciiz "The magic number is "
	exclamation: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:

	# Print "Enter an integer:\n"
	la $a0, enter_int
	li $v0, 4
	syscall

	# Recieve input from user and store into $t0
	li $v0, 5
	syscall
	move $t0, $v0

	# Print "Hello World 2023!\n"
	la $a0, hello_world
	li $v0, 4
	syscall

	# Print "The magic number is "
	la $a0, magic_number
	syscall

	# Print the user inputted number
	li $v0, 1
	move $a0, $t0
	syscall

	# Print "!!!"
	la $a0, exclamation
	li $v0, 4
	syscall


exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall
