#!/bin/bash

<< coment
Write a script to print the following:
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10.Memory information
11.File system information12.Currently running process
coment


HEIGHT=15
WIDTH=50
CHOICE_HEIGHT=6
BACKTITLE="MENU FOR SYS_INFO"
TITLE="System Information"
MENU="Choose one of the following options:"

OPTIONS=(1 "Users logged in"
	 2 "Shell directory"
         3 "Print working directory"
         4 "Home directory"
	 5 "OS Name & Version"
	 6 "Available Shells"
	 7 "Hard disk Info"
	 8 "CPU Info"
	 9 "Memory Info"
	 10 "File sys Info"
	 11 "Running Processes")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in	
# logged in users
		1) who ;;
		2) echo $SHELL ;;



#working directory
		3) pwd ;;
#user home dir
		4) getent passwd "$USER" | cut -d':' -f6 ;;

#os name & version
# coment
#cat /etc/os-release
#lsb_release -a
#coment
		5) hostnamectl ;;

#kernel version
#uname -r


#Show available shells
		6) cat /etc/shells ;;

#hard disk information
		7) lsblk ;;

#cpu information
		8) lscpu  ;;

#memory information
		9) cat /proc/meminfo ;;

#file system information
		10) df -Th ;;

#list of running processes
		11) htop ;;   #ps -A if htop is not istalled in the system

		*) echo "Invalid Input" ;;
	esac
