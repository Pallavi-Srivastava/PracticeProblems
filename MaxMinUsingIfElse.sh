#!/bin/bash -x
read -p "Enter size :" n
i=1;
max=0;
min=0;
while [[ $i -le $n ]]
do
	num=$(( RANDOM % (999 -100 +1) + 100))
	if [[ $i -eq 1 ]]
	then
		max=$num
		min=$num
	else
		if [ $num -gt $max ]
		then
			max=$num
		elif [ $num -lt $min ]
		then
			min=$num
	 	fi

	fi
	i=$((i + 1))
done
echo "Max:" $max
echo "Min:" $min



