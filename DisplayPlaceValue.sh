#!/bin/bash -x 
read -p "Enter the price:" price

thousands=$((price/1000))
hundreds=$((price%1000/100))
teens=$((price%100/10))
units=$((price%10))


for (( i=0 ; i<=$thousands; i++ ))
do
if [ $thousands -eq 0 ]
then
	echo ""
elif [ $thousands -eq 1 ]
then
	echo "one thousand"
elif [ $thousands -eq 2 ]
then
	echo "two thousand"
elif [ $thousands -eq 3 ]
then
	echo "three thousand"
elif [ $thousands -eq 4 ]
then
        echo "Four thousand"
elif [ $thousands -eq 5 ]
then
	echo "Five thousand"
elif [ $thousands -eq 6 ]
then
	echo "Six thousand"
elif [ $thousands -eq 7 ]
then
	echo "seven thousands"
elif [ $thousands -eq 8 ]
then
	echo "eight thousands"
elif [ $thousands -eq 9 ]
then
	echo "nine thousands"
elif [ $thousands -eq 10 ]
then
	echo "ten thousands"
fi
done
for (( i=0 ; i<=$hundreds; i++ ))
do
if [ $hundreds -eq 0 ]
then
        echo ""
elif [ $hundreds -eq 1 ]
then
        echo "one hundred"
elif [ $hundreds -eq 2 ]
then
        echo "two hundred"
elif [ $hundreds -eq 3 ]
then
        echo "three hundred"
elif [ $hundreds -eq 4 ]
then
        echo "Four hundred"
elif [ $hundreds -eq 5 ]
then
        echo "Five hundred"
elif [ $hundreds -eq 6 ]
then
        echo "Six hundred"
elif [ $hundreds -eq 7 ]
then
        echo "seven hundred"
elif [ $hundreds -eq 8 ]
then
        echo "eight hundred"
elif [ $hundreds -eq 9 ]
then
        echo "nine hundred"
elif [ $hundreds -eq 10 ]
then
        echo "ten hundred"
fi
done
for (( i=0 ; i<=$teens; i++ ))
do
if [ $teens -eq 0 ]
then
        echo ""
elif [ $teens -eq 1 ]
then
        echo "ten"
elif [ $teens -eq 2 ]
then
        echo "twenty"
elif [ $teens -eq 3 ]
then
        echo "thirty"
elif [ $teens -eq 4 ]
then
        echo "Fourty"
elif [ $teens -eq 5 ]
then
        echo "Fivty"
elif [ $teens -eq 6 ]
then
        echo "Sixty"
elif [ $teens -eq 7 ]
then
        echo "sevety"
elif [ $teens -eq 8 ]
then
        echo "eighty"
elif [ $teens -eq 9 ]
then
        echo "ninty"
elif [ $teens -eq 10 ]
then
        echo "hundreds"
fi
done
for (( i=0 ; i<=$units; i++ ))
do
if [ $units -eq 0 ]
then
        echo ""
elif [ $units -eq 1 ]
then
        echo "one"
elif [ $units -eq 2 ]
then
        echo "two"
elif [ $units -eq 3 ]
then
        echo "three"
elif [ $units -eq 4 ]
then
        echo "Four"
elif [ $units -eq 5 ]
then
        echo "Five"
elif [ $units -eq 6 ]
then
        echo "Six"
elif [ $units -eq 7 ]
then
        echo "seven"
elif [ $units -eq 8 ]
then
        echo "eight"
elif [ $units -eq 9 ]
then
        echo "nine"
elif [ $units -eq 10 ]
then
        echo "ten"
fi
done

echo "The price is: " `expr $thousands + $hundreds + $teens + $units`
