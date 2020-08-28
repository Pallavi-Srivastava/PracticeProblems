#!/bin/bash -x 
read -p "Enters Price:" price
thousands=$((price/1000))
hundreds=$((price%1000/100))
teens=$((price%100/10))
units=$((price%10))

    for (( i=0 ; i<=$thousands; i++ ))
do
    case $thousands in
        0) echo "";;
        1) echo "one thousand";;
        2) echo "two thousand";;
        3) echo "three thousand";;
        4) echo "Four thousand";;
        5) echo "Five thousand";;
        6) echo "Six thousand";;
        7) echo "seven thousands";;
        8) echo "eight thousands";;
        9) echo "nine thousands";;
        10) echo "ten thousands";;
    esac
done
    for (( i=0 ; i<=$hundreds; i++ ))
do
case $hundreds in
	0) echo "";;
        1) echo "one hundreds";;
        2) echo "two hundreds";;
        3) echo "three hundreds";;
        4) echo "four  hundreds";;
        5) echo "five  hundreds";;
        6) echo "six  hundreds";;
        7) echo "Seven  hundreds";;
        8) echo "Eight  hundreds";;
        9) echo "Nine  hundreds";;
        10) echo "ten  hundreds";;
      esac
done
    for (( i=0 ; i<=$teens; i++ ))
do
    case $teens in
        0) echo "";;
        1) echo "ten";;
        2) echo "twenty";;
        3) echo "therty";;
        4) echo "fourty";;
        5) echo "fivty";;
        6) echo "sixty";;
        7) echo "seventy";;
        8) echo "eighty";;
        9) echo "ninty";;
        10) echo "hundreds";;
      esac
done
    for (( i=0 ; i<=$units; i++ ))
do
case $units in
        0) echo "";;
        1) echo "one";;
        2) echo "two";;
        3) echo "three";;
        4) echo "four";;
        5) echo "five";;
        6) echo "six";;
        7) echo "seven";;
        8) echo "eight";;
        9) echo "nine";;
    esac
done
echo "The price is: " $(( thousands + hundreds + teens + units ))
