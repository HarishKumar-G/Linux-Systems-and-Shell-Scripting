#!/bin/bash

<< coment
script called say_hello, which will print greetings based on time.
coment

clear

user=$(whoami)
temp_time=$(date)
today=$(echo "$temp_time" | cut -d' ' -f1)
time_now=$(echo "$temp_time" | cut -d' ' -f4) 

tyme=`date +%H`


if [ $tyme -lt 12 ]; then
	echo "Good morning $user, Have a nice day!"
	echo "This is $today $temp_time" 
elif [ $tyme -eq 12 ]; then
	echo "Good noon $user, Good day ahead!"
	echo "           $today $time_now"
elif [  $tyme -lt 16 ]; then
	echo "Good afternoon $user!"
	echo "      $today  $time_now"
elif [  $tyme -lt 17 ]; then
	echo "Good dusk $user"
	echo "     $today $time_now"
else
	echo "Good evening $user"
	echo "      $today $time_now"
fi
