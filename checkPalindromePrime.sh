#!/bin/bash
checkPalindrome()
{
        number=$n
        reverse=0
        while [ $n -gt 0 ]
        do
            a=`expr $n % 10`;
            n=`expr $n / 10`;
            reverse=`expr $reverse \*  10 + $a`
        done
        if [ $number -eq $reverse ]
        then
            echo $reverse;
	else
	   echo 4;
         fi
}
read -p "Number:" n
var=$(checkPalindrome)
flag=0
for (( i=2;i<=var/2 ;i++ ))
do
        if [ $((var%i)) -eq 0 ]
        then
                echo "Number is not a Palindromeprime no";
                flag=1;
                exit;
	fi
done
if [ $flag -eq 0 ]
then
        echo "Number is a Palindromeprime no";
fi




