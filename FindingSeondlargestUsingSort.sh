#!/bin/bash
declare -a array_name
echo "How many element you want to enter?"
read element_count
echo "enter $element_count groups: "
echo $element_count
for(( c = 0 ; c < $element_count ; c++))
do
  read sorted_elements
  array_name[$c]="$sorted_elements"
done
echo -e "${array_name[@]}"
echo "Sort_Series:"
echo ${array_name[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort

if [ "${#array_name[@]}" -lt 2 ]
then
        echo Incoming array is not large enough >&2
        exit 1
fi

largest=${array_name[0]}
secondLargest='unset'
for ((i=1;i < ${#array_name[@]}; i++))
do
        if [[ ${array_name[i]} > $largest ]]
        then
                secondLargest=$largest
                largest=${array_name[i]}
        elif (( ${array_name[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${array_name[i]} > $secondLargest ]]; }
        then
                secondLargest=${array_name[i]}
        fi
done
echo "secondLargest =$secondLargest";
smallest=${array_name[0]}
secondSmallest='unset'
for ((i=1;i < ${#array_name[@]}; i++))
do
        if [[ ${array_name[i]} < $smallest ]]
        then
                secondSmallest=$smallest
                smallest=${array_name[i]}
        elif (( ${array_name[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array_name[i]} < $secondSmallest ]]; }
        then
                secondSmallest=${array_name[i]}
        fi
done
echo "secondSmallest =$secondSmallest";
