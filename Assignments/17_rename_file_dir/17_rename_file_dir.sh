
<< coment
a script to rename a file/directory replaced by lower/upper case letters.
coment


for i in $( ls | grep [A-Za-z] )
do
	mv -i $i `echo "$i"|tr 'A-Z' 'a-z'`
done
