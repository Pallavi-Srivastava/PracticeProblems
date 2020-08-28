#!/bin/bash
for ((i=1;i<=10;i++))
do
	Num[i]=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
done
echo ${Num[@]}
if [ "${#Num[@]}" -lt 2 ]
then
	echo Incoming array is not large enough >&2
	exit 1
fi

largest=${Num[0]}
secondLargest='unset'
for ((i=1;i < ${#Num[@]}; i++))
do
	if [[ ${Num[i]} > $largest ]]
	then
		secondLargest=$largest
		largest=${Num[i]}
	elif (( ${Num[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${Num[i]} > $secondLargest ]]; }
	then
		secondLargest=${Num[i]}
	fi
done
echo "secondLargest =$secondLargest";
