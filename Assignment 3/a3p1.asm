#			.data
#iArr:		.space 40			
#iinPrompt:	.asciiz "\nInput int #"
#colSpace:	.asciiz ": "
#oveMsg:		.asciiz "Value is odd... add 1 to evenize..."
#moMsg:		.asciiz "Max of "
#veMsg:		.asciiz " values entered..."
#eaPrompt:	.asciiz "Enter another? (n or N = no, anything else = yes) "
#veLab:		.asciiz " value(s) entered: "
#minLab:		.asciiz "Min is "
#maxLab:		.asciiz "Max is "
#hasDupMsg:	.asciiz "Uno o mas duplicates..."
#noDupMsg:		.asciiz "No duplicate..."
			.text
			.globl main
main:
########################################
# Register Usage
########################################
# $t0: used
# $t1: hopPtr1
# $t2: hopPtr2
# $t8: endPtr1
# $t9: endPtr2
# $t4: oneInt
# $t5: short-lived temporary
# $v1: reply
# $a2: min
# $a3: max
# $t3: hasDup
########################################

			li $t1, ' '			#store  ' '
			addiu $sp, $sp, -246	#allocate stack mem
			
			li $t0, '\n'			#iinPrompt:
			sb $t0, 0($sp)
			li $t0, 'I'
			sb $t0, 1($sp)
			li $t0, 'n'
			sb $t0, 2($sp)
			li $t0, 'p'
			sb $t0, 3($sp)
			li $t0, 'u'
			sb $t0, 4($sp)
			li $t0, 't'
			sb $t0, 5($sp)
			sb $t1, 6($sp)
			li $t0, 'i'
			sb $t0, 7($sp)
			li $t0, 'n'
			sb $t0, 8($sp)
			li $t0, 't'
			sb $t0, 9($sp)
			sb $t1, 10($sp)
			li $t0, '#'
			sb $t0, 11($sp)
			li $t0, '\0'
			sb $t0, 12($sp)
			
			li $t0, ':'			#colSpace:
			sb $t0, 13($sp)
			sb $t1, 14($sp)
			li $t0, '\0'
			sb $t0, 15($sp)
			
			li $t0, 'V'			#oveMsg:
			sb $t0, 16($sp)
			li $t0, 'a'
			sb $t0, 17($sp)
			li $t0, 'l'
			sb $t0, 18($sp)
			li $t0, 'u'
			sb $t0, 19($sp)
			li $t0, 'e'
			sb $t0, 20($sp)
			sb $t1, 21($sp)
			li $t0, 'i'
			sb $t0, 22($sp)
			li $t0, 's'
			sb $t0, 23($sp)
			sb $t1, 24($sp)
			li $t0, 'o'
			sb $t0, 25($sp)
			li $t0, 'd'
			sb $t0, 26($sp)
			li $t0, 'd'
			sb $t0, 27($sp)
			li $t0, '.'
			sb $t0, 28($sp)
			sb $t0, 29($sp)
			sb $t0, 30($sp)
			sb $t1, 31($sp)
			li $t0, 'a'
			sb $t0, 32($sp)
			li $t0, 'd'
			sb $t0, 33($sp)
			li $t0, 'd'
			sb $t0, 34($sp)
			sb $t1, 35($sp)
			li $t0, '1'
			sb $t0, 36($sp)
			sb $t1, 37($sp)
			li $t0, 't'
			sb $t0, 38($sp)
			li $t0, 'o'
			sb $t0, 39($sp)
			sb $t1, 40($sp)
			li $t0, 'e'
			sb $t0, 41($sp)
			li $t0, 'v'
			sb $t0, 42($sp)
			li $t0, 'e'
			sb $t0, 43($sp)
			li $t0, 'n'
			sb $t0, 44($sp)
			li $t0, 'i'
			sb $t0, 45($sp)
			li $t0, 'z'
			sb $t0, 46($sp)
			li $t0, 'e'
			sb $t0, 47($sp)
			li $t0, '.'
			sb $t0, 48($sp)
			sb $t0, 49($sp)
			sb $t0, 50($sp)
			li $t0, '\0'
			sb $t0, 51($sp)
			
			li $t0, 'M'			#moMsg:		
			sb $t0, 52($sp)
			li $t0, 'a'
			sb $t0, 53($sp)
			li $t0, 'x'
			sb $t0, 54($sp)
			sb $t1, 55($sp)
			li $t0, 'o'
			sb $t0, 56($sp)
			li $t0, 'f'
			sb $t0, 57($sp)
			sb $t1, 58($sp)
			li $t0, '\0'
			sb $t0, 59($sp)

			sb $t1, 60($sp)		#veMsg:
			li $t0, 'v'
			sb $t0, 61($sp)
			li $t0, 'a'
			sb $t0, 62($sp)
			li $t0, 'l'
			sb $t0, 63($sp)
			li $t0, 'u'
			sb $t0, 64($sp)
			li $t0, 'e'
			sb $t0, 65($sp)
			li $t0, 's'
			sb $t0, 66($sp)
			sb $t1, 67($sp)
			li $t0, 'e'
			sb $t0, 68($sp)
			li $t0, 'n'
			sb $t0, 69($sp)
			li $t0, 't'
			sb $t0, 70($sp)
			li $t0, 'e'
			sb $t0, 71($sp)
			li $t0, 'r'
			sb $t0, 72($sp)
			li $t0, 'e'
			sb $t0, 73($sp)
			li $t0, 'd'
			sb $t0, 74($sp)
			li $t0, '.'
			sb $t0, 75($sp)
			sb $t0, 76($sp)
			sb $t0, 77($sp)
			li $t0, '\0'
			sb $t0, 78($sp)
			
			li $t0, 'E'			#eaPrompt:
			sb $t0, 79($sp)
			li $t0, 'n'
			sb $t0, 80($sp)
			li $t0, 't'
			sb $t0, 81($sp)
			li $t0, 'e'
			sb $t0, 82($sp)
			li $t0, 'r'
			sb $t0, 83($sp)
			sb $t1, 84($sp)
			li $t0, 'a'
			sb $t0, 85($sp)
			li $t0, 'n'
			sb $t0, 86($sp)
			li $t0, 'o'
			sb $t0, 87($sp)
			li $t0, 't'
			sb $t0, 88($sp)
			li $t0, 'h'
			sb $t0, 89($sp)
			li $t0, 'e'
			sb $t0, 90($sp)
			li $t0, 'r'
			sb $t0, 91($sp)
			li $t0, '?'
			sb $t0, 92($sp)
			sb $t1, 93($sp)
			li $t0, '('
			sb $t0, 94($sp)
			li $t0, 'n'
			sb $t0, 95($sp)
			sb  $t1, 96($sp)
			li $t0, 'o'
			sb $t0, 97($sp)
			li $t0, 'r'
			sb $t0, 98($sp)
			sb $t1, 99($sp)
			li $t0, 'N'
			sb $t0, 100($sp)
			sb $t1, 101($sp)
			li $t0, '='
			sb $t0, 102($sp)
			sb $t1, 103($sp)
			li $t0, 'n'
			sb $t0, 104($sp)
			li $t0, 'o'
			sb $t0, 105($sp)
			li $t0, ','
			sb $t0, 106($sp)
			sb $t1, 107($sp)
			li $t0, 'a'
			sb $t0, 108($sp)
			li $t0, 'n'
			sb $t0, 109($sp)
			li $t0, 'y'
			sb $t0, 110($sp)
			li $t0, 't'
			sb $t0, 111($sp)
			li $t0, 'h'
			sb $t0, 112($sp)
			li $t0, 'i'
			sb $t0, 113($sp)
			li $t0, 'n'
			sb $t0, 114($sp)
			li $t0, 'g'
			sb $t0, 115($sp)
			sb $t1, 116($sp)
			li $t0, 'e'
			sb $t0, 117($sp)
			li $t0, 'l'
			sb $t0, 118($sp)
			li $t0, 's'
			sb $t0, 119($sp)
			li $t0, 'e'
			sb $t0, 120($sp)
			sb $t1, 121($sp)
			li $t0, '='
			sb $t0, 122($sp)
			sb $t1, 123($sp)
			li $t0, 'y'
			sb $t0, 124($sp)
			li $t0, 'e'
			sb $t0, 125($sp)
			li $t0, 's'
			sb $t0, 126($sp)
			li $t0, ')'
			sb $t0, 127($sp)
			sb $t1, 128($sp)
			li $t0, '\0'
			sb $t0, 129($sp)
			
			sb $t1, 130($sp)		#veLab:
			li $t0, 'v'
			sb $t0, 131($sp)
			li $t0, 'a'
			sb $t0, 132($sp)
			li $t0, 'l'
			sb $t0, 133($sp)
			li $t0, 'u'
			sb $t0, 134($sp)
			li $t0, 'e'
			sb $t0, 135($sp)
			li $t0, '('
			sb $t0, 136($sp)
			li $t0, 's'
			sb $t0, 137($sp)
			li $t0, ')'
			sb $t0, 138($sp)
			sb $t1, 139($sp)
			li $t0, 'e'
			sb $t0, 140($sp)
			li $t0, 'n'
			sb $t0, 141($sp)
			li $t0, 't'
			sb $t0, 142($sp)
			li $t0, 'e'
			sb $t0, 143($sp)
			li $t0, 'r'
			sb $t0, 144($sp)
			li $t0, 'e'
			sb $t0, 145($sp)
			li $t0, 'd'
			sb $t0, 146($sp)
			li $t0, ':'
			sb $t0, 147($sp)
			sb $t1, 148($sp)
			li $t0, '\0'
			sb $t0, 149($sp)
			
			li $t0, 'M'			#minLab:
			sb $t0, 150($sp)
			li $t0, 'i'
			sb $t0, 151($sp)
			li $t0, 'n'
			sb $t0, 152($sp)
			sb $t1, 153($sp)
			li $t0, 'i'
			sb $t0, 154($sp)
			li $t0, 's'
			sb $t0, 155($sp)
			sb $t1, 156($sp)
			li $t0, '\0'
			sb $t0, 157($sp)
			
			li $t0, 'M'			#maxLab:
			sb $t0, 158($sp)
			li $t0, 'a'
			sb $t0, 159($sp)
			li $t0, 'x'
			sb $t0, 160($sp)
			sb $t1, 161($sp)
			li $t0, 'i'
			sb $t0, 162($sp)
			li $t0, 's'
			sb $t0, 163($sp)
			sb $t1, 164($sp)
			li $t0, '\0'
			sb $t0, 165($sp)
			
			li $t0, 'U'			#hasDupMsg:
			sb $t0, 166($sp)
			li $t0, 'n'
			sb $t0, 167($sp)
			li $t0, 'o'
			sb $t0, 168($sp)
			sb $t1, 169($sp)
			li $t0, 'o'
			sb $t0, 170($sp)
			sb $t1, 171($sp)
			li $t0, 'm'
			sb $t0, 172($sp)
			li $t0, 'a'
			sb $t0, 173($sp)
			li $t0, 's'
			sb $t0, 174($sp)
			sb $t1, 175($sp)
			li $t0, 'd'
			sb $t0, 176($sp)
			li $t0, 'u'
			sb $t0, 177($sp)
			li $t0, 'p'
			sb $t0, 178($sp)
			li $t0, 'l'
			sb $t0, 179($sp)
			li $t0, 'i'
			sb $t0, 180($sp)
			li $t0, 'c'
			sb $t0, 181($sp)
			li $t0, 'a'
			sb $t0, 182($sp)
			li $t0, 't'
			sb $t0, 183($sp)
			li $t0, 'e'
			sb $t0, 184($sp)
			li $t0, 's'
			sb $t0, 185($sp)
			li $t0, '.'
			sb $t0, 186($sp)
			sb $t0, 187($sp)
			sb $t0, 188($sp)
			li $t0, '\0'
			sb $t0, 189($sp)

			li $t0, 'N'			#noDupMsg:
			sb $t0, 190($sp)
			li $t0, 'o'
			sb $t0, 191($sp)
			sb $t1, 192($sp)
			li $t0, 'd'
			sb $t0, 193($sp)
			li $t0, 'u'
			sb $t0, 194($sp)
			li $t0, 'p'
			sb $t0, 195($sp)
			li $t0, 'l'
			sb $t0, 196($sp)
			li $t0, 'i'
			sb $t0, 197($sp)
			li $t0, 'c'
			sb $t0, 198($sp)
			li $t0, 'a'
			sb $t0, 199($sp)
			li $t0, 't'
			sb $t0, 200($sp)
			li $t0, 'e'
			sb $t0, 201($sp)
			li $t0, '.'
			sb $t0, 202($sp)
			sb $t0, 203($sp)
			sb $t0, 204($sp)
			li $t0, '\0'
			sb $t0, 205($sp)

			
			li $t0, 0
			#la $t1, iArr
			addi $t1, $sp, 206
begDW1:
			li $v0, 4
			#iinPrompt
			move $a0, $sp	
			syscall
			li $v0, 1
			addi $a0, $t0, 1
			syscall
			li $v0, 4
			#la $a0, colSpace
			addi $a0, $sp, 13
			syscall
			
			li $v0, 5
			syscall
			move $t4, $v0
			andi $t5, $t4, 1
			beqz $t5, endI1
begI1:
			li $v0, 4
			#la $a0, oveMsg
			addi $a0, $sp, 16
			syscall 
			li $v0, 11
			li $a0, '\n'
			syscall
			addi $t4, $t4, 1
endI1:
			sw $t4, 0($t1)
			addi $t0, $t0, 1
			addi, $t1, $t1, 4
			li $t5, 10
			bne $t0, $t5, else2
begI2:
			li $v0, 4
			#la $a0, moMsg
			addi $a0, $sp, 52
			syscall
			li $v0, 1
			li $a0, 10
			syscall
			li $v0, 4
			#la $a0, veMsg
			addi $a0, $sp, 60
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
			li $v1, 'n'
			j endI2
else2:
			li $v0, 4
			#la $a0, eaPrompt
			addi $a0, $sp, 79
			syscall
			li $v0, 12
			syscall
			move $v1, $v0
 endI2:

endDW1:
DWTest1:
			li $t5, 'n'
			beq $v1, $t5, xitDW1
			li $t5, 'N'
			bne $v1, $t5, begDW1
xitDW1:

			li $v0, 11
			li $a0, '\n'
			syscall
			li $v0, 1
			move $a0, $t0
			syscall
			li $v0, 4
			#la $a0, veLab
			addi $a0, $sp, 130
			syscall
			#la $t5, iArr
			addi $t5, $sp, 206
			sll $t8, $t0, 2
			add $t8, $t8, $t5
			#la $t1, iArr
			addi $t1, $sp, 206
			j FTest1
begF1:
			addi $t5, $t8, -4
			bge $t1, $t5, else3
begI3:
			li $v0, 1
			lw $a0, 0($t1)
			syscall
			li $v0, 11
			li $a0, ' '
			syscall
			syscall
			j endI3
else3:
			li $v0, 1
			lw $a0, 0($t1)
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
endI3:
			addi $t1, $t1, 4

FTest1:		blt $t1, $t8, begF1
endF1:

			#la $t1, iArr
			addi $t1, $sp, 206
			sll $t8, $t0, 2
			add $t8, $t8, $t1

			lw $a2, 0($t1)
			move $a3, $a2
			addi $t1, $t1, 4
			j WTest1
begW1:
			lw $t5, 0($t1)
			bge $t5, $a2, else4
begI4:
			move $a2, $t5
			j endI4
else4:
			ble $t5, $a3, endI5
begI5:
			move $a3, $t5
endI5:
endI4:
			addi $t1, $t1, 4
WTest1:		blt $t1, $t8, begW1
endW1:

			li $v0, 4
			#la $a0, minLab
			addi $a0, $sp, 150
			syscall
			li $v0, 1
			move $a0, $a2
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
			li $v0, 4
			#la $a0, maxLab
			addi $a0, $sp, 158
			syscall
			li $v0, 1
			move $a0, $a3
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
			li $t3, 0
			#la $t5, iArr
			addi $t5, $sp, 206
			sll $t8, $t0, 2
			addi $t8, $t8, -4
			add $t8, $t8, $t5
			
			addi $t9, $t8, 4
 			#la $t1, iArr
 			addi $t1, $sp, 206
			j FTest2
begF2:
			lw $t4, 0($t1)
			addi $t2, $t1, 4
			j FTest3
begF3:
			lw $t5, 0($t2)
			bne $t5, $t4, endI6
begI6:
			li $t3, 1
			j endF3
endI6:
			addi $t2, $t2, 4

FTest3:		blt $t2, $t9, begF3
endF3:

			addi $t1, $t1, 4

FTest2:		bnez $t3, xitF2
			blt $t1, $t8, begF2
xitF2:
endF2:

			beqz $t3, else7
begI7:
			li $v0, 4
			#la $a0, hasDupMsg
			addi $a0, $sp, 166
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
			j endI7
else7:
			li $v0, 4
			#la $a0, noDupMsg
			addi $a0, $sp, 190
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
endI7:
			addiu $sp, $sp, 246	#dealloc stack mem
			li $v0, 10
			syscall

