#!/bin/bash
<< coment
Read 'n' and generate a pattern given below
1
2 3
4 5 6
7 8 9 10
coment
n=1
k=1
while [ $n -le 10 ]
do
	for((i=1; i<=$k; i++))
	do
		echo -n "$n "
		n=`expr $n + 1`
	done
#		if [ $n -le 10 ]
#		then
			k=`expr $k + 1`
			#echo "$n"
			#echo -e "\n"
#		fi
		echo -e "\n"
done	
