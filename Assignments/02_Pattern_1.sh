#!/bin/bash

<< coment
generate a pattern given below
1
1 2
1 2 3
1 2 3 4
coment

echo "Enter the number:"
read n
echo -e "\n"
for((i=1; i<=n; i++))
do
	for((j=1; j<=i; j++))
	do
		echo -n "$j "
	done
	echo -e "\n"
done
