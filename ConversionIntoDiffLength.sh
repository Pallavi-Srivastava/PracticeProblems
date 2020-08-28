#!/bin/bash -x
read -p "Enter value from user:" userValue
Feet_to_inch=0
Inch_to_feet=1
Feet_to_meter=2
Meter_to_feet=3
Check=$((RANDOM%4))
case $Check in
	$Feet_to_inch)
	feet_to_inch=`awk 'BEGIN{printf("%0.4f",'$userValue' * 12)}'`
	echo $feet_to_inch
	;;
	$Inch_to_feet)
	inch_to_feet=`awk 'BEGIN{printf("%0.4f",'$userValue' * 0.08333)}'`
	echo $inch_to_feet
	;;
	$Feet_to_meter)
	feet_to_meter=`awk 'BEGIN{printf("%0.4f",'$userValue' * 0.3048)}'`
	echo $feet_to_meter
	;;
	$Meter_to_feet)
	meter_to_feet=`awk 'BEGIN{printf("%0.4f",'$userValue' * 3.28084)}'`
	echo $meter_to_feet
	;;
	*)
	echo "Case Not Valid"
	;;
esac
