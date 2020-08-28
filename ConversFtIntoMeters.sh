#!/bin/bash
read -p "width:" w
read -p "height:" h
area=$(( $w * $h ))
meters=`awk 'BEGIN{printf("%0.4f",'$area' * 3.28084)}'`
echo $meters

