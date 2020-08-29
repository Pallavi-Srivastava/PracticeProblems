#!/bin/bash -x
read -p "Enter Any number:" n
if [ $n -gt 0 ] && [ $n -le 9 ]
then
   u=$((n%10))
   echo " the units place is $u"
elif [ $n -ge 10 ] && [ $n -le 99 ]
then
   	u=$((n%10))
        t=$(( (n/10)%10 ))
        echo "The tens place is $t"
	echo "The units place is $u"
elif [ $n -ge 100 ] && [ $n -le 999 ]
then
       u=$((n%10))
       t=$(( (n/10)%10 ))
       h=$(( (n/100)%10 ))
       echo " The hundreds place is $h"
       echo " The tens place is $t"
       echo " The units place is $u"
elif [ $n -ge 1000 ] && [ $n -le 9999 ]
then
        u=$((n%10))
        t=$(( (n/10)%10 ))
        h=$(( (n/100)%10 ))
        th=$((n/1000));
	echo "The  thousands place is $th"
	echo " The hundreds place is $h"
   	echo " The tens place is $t"
   	echo " The units place is $u"
fi



