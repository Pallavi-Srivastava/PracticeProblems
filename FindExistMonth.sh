#!/bin/bash -x
read -p "Enter the month:" month
read -p "Enter the date:" date
if [[ $month -lt 3 || $month -gt 6 || $date -gt 31 || $date -lt 1 ]]
then
        echo "Invalid  :: $month "
else

        if [[ ( $month -ge 3 ) && ( $month -le 6 ) ]]
        then

                if [[ ( $month -eq 3 ) && ( $date -ge 20 ) ]]
                then
                echo "valid Date"
                elif [[ $month -eq 6 && $date -le 20 ]]
                then
                echo "valid Date"
                elif [[ $month -eq 4 && $date -le 30 || $month -eq 5 && $date -le 31 ]]
                then
                echo "valid Date"
                fi
        fi
fi







