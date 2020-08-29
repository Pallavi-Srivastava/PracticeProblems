#!/bin/bash -x
read -p "Enters Price:" price
thousands=$((price/1000))
hundreds=$(((price/100)%10))
teens=$(((price/10)%10))
units=$((price%10))
case $price in
       [1-9])
         u=$((price%10))
         echo "the ones place is $u"
        ;;
	[1-9][1-9])
         u=$((price%10))
         t=$(( (price/10)%10 ))
         echo "the tens place $t"
         echo "the ones place is $u"
        ;;
	[1-9][1-9][1-9])
         u=$((price%10))
         t=$(( (price/10)%10 ))
         h=$(( (price/100)%10 ))
         echo " the hundreds place is $h"
         echo "the tens place $t"
         echo "the ones place is $u"
        ;;
	[1-9][1-9][1-9][1-9])
 	 u=$((price%10))
         t=$(( (price/10)%10 ))
         h=$(( (price/100)%10 ))
         th=$((price/1000));
         echo " The thousands place is $th"
         echo " the hundreds place is $h"
         echo "the tens place $t"
         echo "the ones place is $u"
	;;
esac
