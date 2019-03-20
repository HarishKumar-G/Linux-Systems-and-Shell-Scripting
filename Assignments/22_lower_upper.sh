#!/bin/bash
<< coment
cript to convert string lower to upper and upper to lower.
coment
for string in $*
do
	echo "$string" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
done
