#!/bin/bash

<< coment
Display the names of any file-system which have less than 10% free space available
coment

file_system=`df --output=source | tail -n 26`
									#available=`df --output=avail`
use_per=`df | awk '{print $5}' | cut -d'%' -f1 | tail -n 26`
									#echo "$use"
									#tot_size=`df --output=size`
									#used_size=`df --output=used`


j=0
for i in $file_system
do
	file_sys[$j]=$i

	let j=$j+1
done

j=0
echo "The file systems"
for i in $use_per
do
	use[$j]=$i
	if [ ${use[$j]} -lt 10 ]
	then
		echo "                ${file_sys[$j]}"
	fi
	let j=$j+1
done
echo "                      have less than 10% free space."



































<< coment
for i in $tot_size
do
	total[$j]=$i
	let j=$j+1
done
for i in $used_size
do
	used[$j]=$i
	let j=$j+1
done

length=${#use[@]}
echo "$length"

for((i=1; i<${#use[$i]}; i++))
do
	echo "value of ${use[$i]}"
	if [ ${use[$i]} -gt 90 ]
	then
		echo "The filesystem file_sys has less than 10% free space"
	fi
done
coment
#<< coment
#for((i=1; i<$length; i++))
#do
#	mul=`expr ${used[$i]} \* 100`
#	free_space=`expr $mul / ${total[$i]}`
#	echo "$free_space"

#	free_space=$(($(($(($used[$i]*100)))) / $(($total[$i]))))

#	if [ $free_space -gt 90 ]
#	then
#		echo "File system $filesystem has less than 10% free space"
#	fi
#done

#coment
