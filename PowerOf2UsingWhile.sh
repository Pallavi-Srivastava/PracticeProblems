#!/bin/bash
read -p "Enter a num:" num
i=0
powerOfTwo=1;
while [ $i -le $num -a $num -lt 8 ]
do
        powerOfTwo=$((2*$powerOfTwo));
	echo $powerOfTwo;
	i=`expr $i + 1`;
done




