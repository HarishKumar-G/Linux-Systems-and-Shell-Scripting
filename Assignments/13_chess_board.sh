#!/bin/bash

<< coment
a script to print chess board.
coment


clear
a=5								 # row/line number
for(( i=1; i<=8; i++ ))
do
	for(( j=1; j<=4; j++ ))					 # prints the same line for n times
	do
		tput cup $a 20                                   # moves the cursor to its respective row and column
		for(( k=1; k<=8; k++ ))
		do
			if [ $(($(($i+$k))%2)) = 0 ]
			then
				echo -ne "\033[40m             " # black color
			else 
				echo -ne "\033[47m             " # white color
			fi
		done
		let a=`expr $a + 1`				 # go to the next row/line
		echo -ne "\033[40m"
	done
done
echo -e "\033[0m"
tput cup `expr $a + 1` 45
echo  "    LET'S GET YOUR PIECES   &   HAVE A GAME THROWN   "
echo ""
exit
