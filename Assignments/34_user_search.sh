#!/bin/bash

<< coment
a script to search a user present in your system.
coment


	if getent passwd $1 > /dev/null 2>&1; then
		echo -e "User is present" #Here the User details
		grep "$1" /home/harish/ShellScripts/Assignments/Assignment_1/30_User_GID/passwd.txt
	else
		echo "User is not present"
	fi
	grep "$1" /home/harish/ShellScripts/Assignments/Assignment_1/32_User/passwd.txt | wc -l

#rm user.txt
