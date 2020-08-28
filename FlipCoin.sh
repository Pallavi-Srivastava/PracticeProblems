#!/bin/bash
flips=1
heads=0
tails=0

while [ $flips -le 11 ]
do
     coin=$((RANDOM%2))
     flips=`expr $flips + 1`;
     if [ $coin -eq 1 ]
     then
        echo "Heads";
	heads=`expr $heads + 1`;
     elif [ $coin -eq 0 ]
     then
	 echo "Tails";
	 tails=`expr $tails + 1`;
      fi
done
echo "We got", $heads, "heads and", $tails,"tails!"
exit;
