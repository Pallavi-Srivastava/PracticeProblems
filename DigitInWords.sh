#!/bin/bash
read -p "Enter number:" n
len=$(echo $n |wc -c)
len=$(( $len - 1))
echo "Numbers in words:"
for (( i=1;i<=$len;i++ ))
do
        num=$(echo $n | cut -c $i)
if [ $num -eq 0 ]
then
        echo -n "ZERO" ;
elif [ $num -eq 1 ]
then
        echo -n "ONE" ;
elif [ $num -eq 2 ]
then
        echo -n "TWO" ;
elif [ $num -eq 3 ]
then
        echo -n "THREE" ;
elif [ $num -eq 4 ]
then
        echo -n "FOUR" ;
elif [ $num -eq 5 ]
then
        echo -n "FIVE" ;
elif [ $num -eq 6 ]
then
        echo -n "SIX" ;
elif [ $num -eq 7 ]
then
        echo -n "SEVEN" ;
elif [ $num -eq 8 ]
then
        echo -n "EIGHT" ;
else
        echo -n "NINE" ;
fi
done
