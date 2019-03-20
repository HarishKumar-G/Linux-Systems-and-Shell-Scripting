#!/bin/bash

HEIGHT=15
WIDTH=50
CHOICE_HEIGHT=4
BACKTITLE="DATABASE MANAGEMENT"
TITLE="MENU"
MENU="Choose one of the following options:"

OPTIONS=(1 "Insert new Record"
	 2 "View an existing Record"
	 3 "Modify a record" )

CHOICE=$(dialog --clear\
		--backtitle "$BACKTITLE" \
		--title "$TITLE" \
		--menu "$MENU" \
		$HEIGHT $WIDTH $CHOICE_HEIGHT \
		"${OPTIONS[@]}}" \
		2>&1 >/dev/tty)

function insert()
{
		clear
	################### adding name #################	
		i=0
		while [ "$i" -eq 0 ]; do
			echo "Enter Name"
			read name
			if [[ "$name" =~ [a-zA-Z\ ] ]]; then
				echo "Name added"
				break
			else
				echo -e "Name can contain only alphabets and a space.\nEnter a valid name"
			fi
		done

	##############  adding email ####################
		while [ $i -eq 0 ]; do
			echo "Enter e-mail"
			read email
			len=${#email}
			for((i=0; i<$len; i++))
			do
				if [[ "${email:$i:1}" == '@' || "${email:$i:1}" == '.' ]]
				then
					echo -ne "${email:$i:1} is detected\t"
					if [[ $i==$len ]]
					then
						echo "e-mail is valid"
						break
					fi
				fi

			done
		done

	################### adding telephone number ####################
		i=0
		while [ $i -eq 0 ]; do
			echo "Enter Telephone number"
			read teleno
			if [[ "$teleno" =~ [0-9\ ] ]]; then
				echo "telephone number added"
				break
			else
				echo "Telephone number should only contain numbers"
			fi
		done
	####################  adding place #################
	while [ $i -eq 0 ]; do
		echo "Enter Place"
		read place
		if [[ "$place" =~ [a-zA-Z\ ] ]]; then
			echo "Place added"
			break
		else
			echo "place should contain only alphabets and spaces"
		fi
	done
		#################### adding message ###################
		echo "Enter message"
		read message
		rec=`echo "Name: $name   Email: $email TELE. NO.: $teleno Place: $place Message: $message"`
		echo "$rec" >> database.txt
}


case $CHOICE in
	1)
		insert
		timestamp=`date | cut -d' ' -f4`
		echo "A new record is inserted to the database at $timestamp" >> database.log
		;;

	2) 
		clear
		echo "Enter few details in the record"
		read info
		echo -e "displaying record"
		grep "$info" database.txt
		timestamp=`date | cut -d' ' -f4`
		echo "Viewed a record at $timestamp" >> database.log
		;;


#	3)		clear
#		echo "Enter name"
#		read $name
#		det=`grep "$name" database.txt`
#		echo "$det"
#		if [[ "$det" =~ [a-zA-Z0-9] ]]; then
#			grep -v $name database.txt >> tmp
#			cp tmp database.txt
#			echo "Deletion complete"
#		else
#			echo "Details not found"
#		fi
#	;;

	3) 
		clear
		echo "Enter name"
		read name
		grep ^$name database.txt
#		if [ $? -ne 0 ]; then
#			echo "$name does not exist"
#		else
			grep "$name" database.txt
			echo "$det" >> temp
			cp database.txt /tmp
			echo "Details found"
			sleep 3
			sed -i '1d' database.txt
			insert 
			echo "New record is replaced with old record which had the details of $name"
			timestamp=`date | cut -d' ' -f4`
			echo "A record is modified at $timestamp" >> database.log
# 		fi 
			;;
	*)
		echo "You've chosen a wrong choice"
esac
