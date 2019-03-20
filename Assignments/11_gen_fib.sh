#!/bin/bash

<< coment
a script to read 'n' and generate Fibonacci numbers <= n
coment

echo "Enter n: "
read n
a=0
b=1
echo -ne "$a\t$b "

for((i=0; i<=1000; i++))
do
	c=`expr $a + $b`
	if [[ $c -lt $n ]]
	then
		echo -ne "$c "
		a=$b
		b=$c
	else
		echo -e "\n"
		exit
	fi
done
