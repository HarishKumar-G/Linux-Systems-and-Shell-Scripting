#!/bin/bash
<< coment
a script to determine whether a given file system or mount point is mounted.
coment

#df > diskfree.txt

use=`grep "$1" /home/harish/ShellScripts/Assignments/linux_module/29_mount_fs/diskfree.txt | awk '{print $5}'`

clear
echo "The $1 has $use of free space"

