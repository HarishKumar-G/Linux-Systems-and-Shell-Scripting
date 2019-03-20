#!/bin/bash

<< coment
Count the number of users with user IDs between 500 and 10000 on the system
coment

file='GId.txt'
lines=`cat $file`

echo "Give me the range of the Group IDs that you want."
read a b

echo "		Here is your list"
echo "	    ---------------------------"
for i in $lines
do
	if [ $i -ge $a -a $i -le $b ]
	then 

		awk -F':' '{
		if ($4=='"$i"') 
			{ print "\t" $1  "\t\t\t"$4 } }' /home/harish/ShellScripts/Assignments/Assignment_1/32_User/passwd.txt

	
	fi
done
echo "	      -----------------------"
echo "		Bye!"
