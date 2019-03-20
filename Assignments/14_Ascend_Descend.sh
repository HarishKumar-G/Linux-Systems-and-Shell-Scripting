#!/bin/bash

<< coment
a script to sort a given number in ascending or descending order.
coment

echo "Enter array elements:"
read -a nums
echo "Entered elements: ${nums[@]}"

echo -e "Enter 1 for Ascending      2 for Descending"
read choice

case $choice in 
	1)
		for((i=0; i<${#nums[@]}; i++ ))
		do
	 		x=`expr $i + 1`	

			for((j=$x; j<${#nums[@]}; j++))
			do
				if [[ ${nums[$i]} -gt ${nums[$j]} ]]
				then
					temp=${nums[$j]}
					nums[$j]=${nums[$i]}
					nums[$i]=$temp
				fi
			done
		done
		echo "Elements in Ascending order:${nums[@]}";;
	2)

		for((i=0; i<${#nums[@]}; i++ ))
		do
			for((j=`expr $i + 1`; j<${#nums[@]}; j++))
			do
				if [[ ${nums[$i]} -lt ${nums[$j]} ]]
				then
					temp=${nums[$j]}
					nums[$j]=${nums[$i]}
					nums[$i]=$temp
				fi
			done
		done
		echo "Elements in Descending order: ${nums[@]}";;

	*)
		echo "Invalid choice";;
esac
