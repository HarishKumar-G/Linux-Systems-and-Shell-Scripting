#!/bin/bash

<< coment
Read 'n' and print the greatest Fibonacci number <= n.
coment


  echo -n "Limit:"
  read n
  a=0
  b=1
  c=0
  echo "Fibonacci Series up to $n:"
  echo -n "$a "
  echo -n "$b "
  for((i=1; i<=1000; i++))
  do
      c=`expr $a + $b`
      if [ $c -le $n ]; then
      		echo -n "$c "
      		a=$b
      		b=$c
	else
		echo -e "\nLargest number: $b"
		exit
	fi      
  done
