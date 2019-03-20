#!/bin/bash

<< coment
Use a recursive function to print each argument passed to the function.
coment

input=($@)

function rec()
{
	var=($#)
	echo ${var[@]}




#	arg=($@)
#	var=${input[$count]}

	rec $var
}
	
#	temp=()	
	#for((i=1; i<${#arg[@]}; i++))
	#do
	#	temp+=(${arg[$(($i))]})		#a=${arg:${arg[$i]}:1}				#temp+=(${arg[$(($i))]})
#	done
#	rec ${temp[@]}

count=0
rec ${input[$count]}
