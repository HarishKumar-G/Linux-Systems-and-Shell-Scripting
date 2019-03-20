#!bin/bash
<< coment
Given album name and corresponding directory this scripts renames them properly by
inserting index numbers. For example given file numbers .
coment

n=1
for i in  *.$1
do
	mv "$i" "$(echo "day_out1_$n").$1"
	let n=$n+1
done

