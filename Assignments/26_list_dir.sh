#!bin/bash

<< coment
a script that takes any number of directories as command-line arguments and then
lists the contents of each of these directories.
coment

echo "Enter Directory name."
echo "The system is in /home/harish/ now."
read -a arr
for((i=0; i<${#arr[@]}; i++))
do
	cd /home/harish/${arr[$i]}
	echo "In Directory ${arr[$i]}" | tr '[:lower:]' '[:upper:]'
	printf "%s\n" *				# or just "echo *" will do this
	echo -e "\n"
done
