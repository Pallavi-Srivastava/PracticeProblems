#!/bin/bash -x
declare -A dice
one=0
two=0
three=0
four=0
five=0
six=0
max=0
min=0
for((i=0;i<6;i++))
do
random=$((RANDOM %6+1))
case "$random" in
	1) one=$(($one+1))
	dice[1]=$one
	if [[ $max -lt $one ]]
	then max=$one
	fi
	;;
	2) two=$(($two+2))
	dice[2]=$two
	if [[ $max -lt $two ]]
        then max=$two
	fi
	;;
	3) three=$(($three+3))
	dice[3]=$three
	if [[ $max -lt $three ]]
        then max=$three
        fi
	;;
	4) four=$(($four+4))
        dice[4]=$four
	if [[ $max -lt $four ]]
        then max=$four
        fi
	;;
        5) five=$(($five+5))
        dice[5]=$five
	if [[ $max -lt $five ]]
        then max=$five
	fi
	;;
        6) six=$(($six+6))
        dice[6]=$six
	if [[ $max -lt $six ]]
        then max=$six
	fi
	;;
esac
done
min=10
max=0
for result in ${dice[@]}
do
	if [[ $result  -gt $max ]]
	then
		max=$result
	fi
	if [[ $result -lt $min ]]
        then
                min=$result
        fi
done
echo ${dice[@]}
echo ${!dice[@]}
result="${dice[$max]}"
result1="${dice[$min]}"
echo "Max:" $result
echo "Min:" $result1
