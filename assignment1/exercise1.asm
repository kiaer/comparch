.data
string1:
	.asciiz "-12345"

.text

main:
	la $a0, string1 # load address into a0
	li $t0, 0 # set t0 to 0 - length of string counter
	li $v0, 0 # set v0 to 0 - resulting value
	li $t5, 1
	li $t6, 0x2d
	li $t7, 1
	li $t8, 0x30
	li $t9, 10 # set t9 to 10 - used for power
	j isNeg # j to counter
isNeg:
	lbu $t1, 0($a0)
	bne $t1, $t6, counter
	addi $a0, $a0, 1
	subi $t5, $t5, 2
	j counter
counter: 
	lbu $t1, 0($a0) # t1 = char of i pos in array
	beqz $t1, fixpos # branch to str2int when null char found
	blt $t1, 0x30, error
	bgt $t1, 0x39, error
	addi $a0, $a0, 1 # points to next pos in string
	addi $t0, $t0, 1 # add one to counter
	j counter # loop
fixpos:
	sub $a0, $a0, $t0 
	j str2int
str2int:
	lbu $t1, 0($a0)
	beqz $t1, exit
	subi $t3, $t1, 0x30
	addi $t4, $t0, 0
	j power
	nop
sumOfStr:
	add $v0, $v0, $t3
	addi $a0, $a0, 1
	subi $t0, $t0, 1
	j str2int
power:
	beq $t4, $t7, sumOfStr
	mul $t3, $t3, $t9
	subi $t4, $t4, 1
	j power
error:
	li $v0, -1
	nop
exit:
	mul $v0, $v0, $t5