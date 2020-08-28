#!/bin/bash -x
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c
res1=$((a + b * c))
echo $res1
res2=$((c+a/b))
echo $res2
res3=$((a%b+c))
echo $res3
res4=$((a*b+c))
echo $res4
if [ $res1 > $res2 ]
then
        max1=$res1;
        min1=$res2;
else
        max1=$res2;
        min1=$res1;
fi
if [ $res3 > $res4 ]
then
        max2=$res3;
        min2=$res4;
else
        max2=$res4;
        min2=$res3;
fi
if [ $max1 > $max2 ]
then
        max=$max1;
        echo "Max:" $max
else
        max=$max2;
        echo "Max:" $max
fi
if [ $min1 < $min2 ]
then
        min=$min1;
        echo "Min:" $min
else
        min=$min2;
        echo "Min:" $min
fi



