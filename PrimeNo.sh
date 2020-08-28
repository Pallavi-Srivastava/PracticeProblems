#!/bin/bash
read -p "Enter Any Number:" num
flag=0
for (( i=2;i<=num/2 ;i++ ))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "$num is not a prime no";
		flag=1;
		exit;
	fi
done
if [ $flag -eq 0 ]
then
	echo "$num is a prime no."
fi
