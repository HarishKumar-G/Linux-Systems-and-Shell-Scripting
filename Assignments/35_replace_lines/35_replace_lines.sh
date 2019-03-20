#!/bin/bash

<< coment
a script to replace 20% lines in a C file randomly and replace it with the pattern
coment

#input_file=(`cat -n main.c`)
length=`wc -l < main.c`
echo "$length"



multiplicand=`echo "scale=3; $length / 100"| bc`
twenty_percent=`echo "$multiplicand*20"| bc`

									#twenty_percent=`echo "scale=5; ($length / 100) * 20" | bc`

echo $multiplicand $twenty_percent
int=${twenty_percent%.*}
echo "$int"

for((i=$int; i>=1; i--))
do
				#awk -v line="$i" 'NR!=line' main.c
	sed -i "${i}d" main.c
	sed -i '$i/-------deleted-------/' main.c
done

