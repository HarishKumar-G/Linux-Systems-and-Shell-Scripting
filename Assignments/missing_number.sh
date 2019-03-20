#!/bin/bash

												#declare -a nums=(1 2 3 4 6 7 8 9)	
read -a nums
N=${#nums[@]}
real_sum=$(($(($(($N+1))*$(($N+2))))/2))							#real_sum=$(($(($N * $(($N + 1)))) / 2))
												#echo "length  $N"
echo "real sum : $real_sum"
missing_sum=${nums[0]}

for((i=1; i<N; i++))
do
	missing_sum=$(($missing_sum + ${nums[$i]}))
done

echo "missing_sum : $missing_sum"
missing_sum=`expr $real_sum - $missing_sum`
echo "The missing number in this array from 1 to $(($N+1)) is $missing_sum"
