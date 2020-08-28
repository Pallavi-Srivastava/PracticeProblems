#!/bin/bash
read -p "Enter number:" num
case $num in
0)
        echo -n "Sunday" ;;
1)
        echo -n "Monday" ;;
2)
        echo -n "Tuesday" ;;
3)
        echo -n "Wednesday" ;;
4)
        echo -n "Thursday" ;;
5)
        echo -n "Friday" ;;
6)
        echo -n "Saturday" ;;
*)
	echo -n "no. not exist in a week" ;;
esac

