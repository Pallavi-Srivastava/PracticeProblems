#!/bin/bash
read -p "enter value which we have in sq m to convert into Acre::" Value
acres=`awk 'BEGIN{printf("%0.4f",'$Value' / 4046.8564224)}'`
echo $acres
