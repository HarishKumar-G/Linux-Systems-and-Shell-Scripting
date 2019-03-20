#! /bin/bash
<< coment
a script for generating random 8-character passwords including alpha numeric
characters.
coment

i=0
while [ $i -lt 5 ]; do
chars='@#$%&_+='
{ </dev/urandom LC_ALL=C grep -ao '[A-Za-z0-9]' | head -n 7
    echo ${chars:$((RANDOM % ${#chars})):1}   # Prints a random special character.
} | shuf | tr -d '\n'; echo -e "\n"
let i=$i+1
done
