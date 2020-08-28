#!/bin/bash -x
read -p "Enter a year:" year
Year=$year
if [[ $(($Year%400)) -eq  "0" ]]
then
        echo "$Year3 is a leap year"
elif [[ $(($Year%100)) -eq 0 ]]
then
        echo "$Year2 is not a leap year"
elif [[ $(($Year%4)) -eq 0 ]]
then
	echo "$Year3 is a leap year"
else
	echo "$year is not a leap yaer"
fi


