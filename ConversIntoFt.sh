#!/bin/bash -x
read -p "enter conversion value:" value
value_inInches=`awk 'BEGIN{printf("%0.4f",'$value' / 12)}'`

