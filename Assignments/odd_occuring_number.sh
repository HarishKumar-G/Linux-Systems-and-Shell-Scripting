#!/bin/bash
#Program to find the element which is occuring odd number of times in an array

echo "Enter the elements: (odd occurence for any one element)"
read -a arr
n=${#arr[@]}
echo "Array length is $n"
echo -e "Array as you entered ${arr[@]} \n"
<< coment
#---------------------finding occurence of each element-------------------
declare -a arr1
count=0
j=0
for((i=0; i<$n; i++))
do
	a=${arr[$i]}
	for((j=0; j<$n; j++))
	do
		if [[ ${arr[$j]} == $a ]]
		then
			count=`expr $count + 1`
		fi
	done
	arr1[$i]=$count
	count=0
done
coment

for((i=0; i<$n; i++))
do
	index=`expr $i + 1`
	for((j=$index; j<$n; j++))
	do
			if [[ ${arr[$i]} -eq ${arr[$j]} ]]
			then
				for((k=$j; k<$n; k++))
				do
					if [ $k -eq $(($n-1)) ]; then
						let n=$n-1
					else
						index=`expr $k + 1`
						arr[$k]=${arr[$index]}	
					fi
				done
			fi
	done
	n=`expr $n - 1`
echo -e "\n${arr[@]}"
done
echo -e "\n${arr[@]}"
