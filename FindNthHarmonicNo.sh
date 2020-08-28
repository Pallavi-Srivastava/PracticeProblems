#!/bin/bash -x
read -p "Enter the nth harmonic Number:" n
sum=0.0
for ((	i=1;i<=n;i++ ))
do
	sum=`awk 'BEGIN{printf("%0.4f",'$sum' + 1 / '$i' )}'`
done
echo $sum
