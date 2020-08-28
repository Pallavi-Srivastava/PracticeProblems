#!/bin/bash
read -p "Enter number:" num
if [ $num -eq 0 ]
then
        echo -n "Sunday" ;
elif [ $num -eq 1 ]
then
        echo -n "Monday" ;
elif [ $num -eq 2 ]
then
        echo -n "Tuesday" ;
elif [ $num -eq 3 ]
then
        echo -n "Wednesday" ;
elif [ $num -eq 4 ]
then
        echo -n "Thursday" ;
elif [ $num -eq 5 ]
then
        echo -n "friday" ;
elif [ $num -eq 6 ]
then
        echo -n "Saturday" ;
else
        echo -n "No. of not found in week" ;
fi

