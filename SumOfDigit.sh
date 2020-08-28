#!/bin/bash -x
array=( -3 6 -3 )
sum=$(IFS=+; echo "$((${array[*]}))")
echo "$sum"

