#!/bin/bash
<< coment
a script to delete empty lines from a file
coment

sed '/^$/d' /home/harish/ShellScripts/Assignments/Assignment_1/09_del_empty/test.txt > testout.txt


<< coment
grep -v '^$' /home/harish/ShellScripts/Assignments/Assignment_1/09_del_empty/test.txt
coment


