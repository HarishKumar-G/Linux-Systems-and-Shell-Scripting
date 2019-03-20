#!/bin/bash

<< coment
a script to print a given number in reverse order.
coment

read s 
echo "Entered string: $s"

len=${#s}
for((i=$len-1; i>=0; i--))
do
	r=`echo $r${s:$i:1}`
done
echo "Reversed string: $r"
