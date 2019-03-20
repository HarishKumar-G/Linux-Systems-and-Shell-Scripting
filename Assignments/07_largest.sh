#!/bin/bash

<< coment
script to compare larger integer values from a 'n' number of arguments using
command line arguments
coment

echo "Enter array elements:"
read -a nums
echo "Entered elements:"
echo ${#nums[@]}
echo ${nums[@]}

largest=${num[0]}
for((i=1; i<${#nums[@]}; i++ ))
do
	if [[ $largest -lt ${nums[$i]} ]]
	then
		largest=${nums[$i]}
       		#${nums[$i]}
	fi

#echo "$i th iterarion $x"
done
echo "The largest number is $largest"
