#!/bin/bash -x
read -p "Enter the year:" year
declare -A cal
for ((i=1;i<51;i++))
do
        echo "your birthMonth no is"
        month=$(( RANDOM % (12 - 1 + 1 ) + 1 ))
	cal[year]=$year
if [[ ${cal[year]} -lt 92 || ${cal[year]} -gt 93 || $month -gt 12 || $month -lt 1 ]]
then
        echo " Invalid  :: $year "
else
        if [[ ${cal[year]} -ge 92 || ${cal[year]} -le 93 ]]
        then
                if [[ $month -ge 1 && ${cal[year]} -eq 92 || $month -le 12 && ${cal[year]} -eq 92 ]]
                then
                echo "valid Month $month :: valid Year $year"
                elif [[ $month -ge 1 && ${cal[year]} -eq 93 || $month -le 12 && ${cal[year]} -eq 93 ]]
                then
                echo "valid Month $month :: valid Year $year"
                fi
	#else
		#echo " Invalid year :: $year "

        fi
fi
done
echo ${cal[@]}
