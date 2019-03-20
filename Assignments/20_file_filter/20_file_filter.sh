<< coment
cript to print contents of file from given line number to next given number of
lines.
coment

#cut -c $1-$2 /home/harish/ShellScripts/Assignments/Assignment_1/20_file_filter/test.txt

head -n $1 test.txt | tail -n $2 #/home/harish/ShellScripts/Assignments/Assignment_1/20_file_filter/test.txt | tail -n $2 
