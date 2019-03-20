#!/bin/bash

<< coment
a script to perform arithmetic operation on digits of a given number depending
upon the operator.
coment

echo "Enter the string: (Must be an operator at the end)"
read input


#declare -a arr=('+' '-' '\*' '/' '%')
#declare -a u
<< coment
for((i=0; i<${#arr[@]}; i++))
do
	if [ "${arr[$i]}"=="${input:${#input}-1:1}" ]
	then
		u[$i]=${arr[$i]}
		echo ${u[$i]}
	fi
done

coment
operator=${input:${#input}-1:1}

function operation()
{
#	a=$operator
		res=${input:0:1}
		for((i=1; i<${#input}-1; i++))
		do
			res=`echo $res$operator${input:$i:1} | bc`
		done
	#	echo "$res"
	#	export res
}

case $operator in
	+) operation $operator
		echo $res ;;
	-) operation $operator
		echo $res ;;
	'*') operation $operator
		echo $res ;;
	/) operation $operator
		echo $res ;;
	%) operation $operator
		echo $res ;;
	*) 
		echo "Operator is missing"
esac
