	# Course 02155, Assignment 1, A1 template

	.data
aa:	.word a     	# Re part of z
bb:	.word b     	# Im part of z

cc:	.word c     	# Re part of w 
dd:	.word d     	# Im part of w 

	.text
	.globl main
main:
	lw $a0, aa
	lw $a1, bb
	lw $a2, cc
	lw $a3, dd
	jal complexMul # Multiply z and w
	nop
	j end          # Jump to end of program
	nop

	##################################
	#                                #
	#        YOUR CODE HERE          #
	#                                #
	##################################

end:
	nop
