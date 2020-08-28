#!/bin/bash -x
Num1=$(( RANDOM % (5 - 2 + 1 ) + 2 ))
Num2=$(( RANDOM % (5 - 2 + 1 ) + 2 ))
res=$(( Num1 + Num2))
echo $res;
