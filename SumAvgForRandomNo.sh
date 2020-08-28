#!/bin/bash -x
read -p "Enter size :" n
sum=0;
avg=0;
for (( i=1;i<=$n;i++ ))
do
	num=$(( RANDOM % (99 -10 +1) + 10))
	sum=$(( $sum + $num ))
	#avg=$(( $num / $n ))
done
echo $sum
#avg=`awk 'BEGIN{printf("%0.4f",'$sum' / $n )}'`

avg=`awk 'BEGIN{printf("%0.4f",'$(($sum/$n))')}'`
#avg=$(($sum / $n))
#echo $avg
