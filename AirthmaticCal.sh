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
if [ $res1 -gt $res2 ] && [ $res1 -gt $res3 ] && [ $res1 -gt $res4 ]
 then
    echo "res1 is greater"
elif   [ $res2 -gt $res3 ] && [ $res2 -gt $res4 ]
 then
     echo "res2 is greater"
elif [ $res3 -gt $res4 ]
 then
     echo "res3 is greater"
else
     echo "res4 is greater"
    fi
if [ $res1 -lt $res2 ] && [ $res1 -lt $res3 ] && [ $res1 -lt $res4 ]
 then
    echo "res1 is Smaller"
elif [ $res2 -lt $res3 ] && [ $res2 -lt $res4 ]
 then
     echo "res2 is Smaller"
elif  [ $res3 -lt $res4 ]
 then
     echo "res3 is Smaller"
else
     echo "res4 is smaller"
fi



