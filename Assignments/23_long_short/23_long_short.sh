#!/bin/bash

<< coment
Display the longest and shortest user-names on the system.
coment

file='un.txt'
lines=`cat un.txt`

arr=($lines)

#echo "${#arr[@]}"
#echo "${arr[0]}"

larglen=${#arr[0]}
smallen=${#arr[0]}

#echo "$larglen $smallen"

for((i=0; i<${#arr[@]}; i++))
do
	for((j=0; j<${#arr[@]}; j++))
	do
		if [ ${#arr[$i]} -lt ${#arr[$j]} -a ${#arr[$i]} -lt $smallen ]
		then
			smallest=${arr[$i]}
			smallen=${#arr[$i]}
		fi
		if [ ${#arr[$i]} -gt ${#arr[$j]} -a ${#arr[$i]} -gt $larglen ]
		then
			largest=${arr[$i]}
			larglen=${#arr[$i]}	
		fi
	done
done
echo "smallest:    $smallest                      $smallen"
echo "largest:     $largest    $larglen"

	awk -F':' '{
	if ($1== '"$smallest"')
		{ print The Smallest UN of GID $4 is $1 } }' /home/harish/ShellScripts/Assignments/Assignment_1/23_long_short/un.txt

	awk -F':' '{
	if ($1== '"$largest"')
		{ print The largest UN of GID $4 is $1 } }' /home/harish/ShellScripts/Assignments/Assignment_1/23_long_short/un.txt
