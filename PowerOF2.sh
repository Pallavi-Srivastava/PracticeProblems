#!/bin/bash
read -p "Enter a num:" n
powerOfTwo=1
for (( i=0;i<=n;i++ ))
do
        powerOfTwo=$((2 * $powerOfTwo));
        echo $powerOfTwo;
done




