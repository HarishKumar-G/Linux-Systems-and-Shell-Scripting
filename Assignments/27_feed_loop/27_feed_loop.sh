#!bin/bash

<< coment
Use pipes or redirection to create an infinite feedback loop.
coment

echo "Hello world!" >> feed.txt
tail -f feed.txt >> feed.txt





<< coment
while [ $i=0 ]
do	
	echo "Hello world!"
done
coment
