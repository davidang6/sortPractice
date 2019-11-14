#!/bin/bash

arr1=(2 6 8 12 20 22 25)
arr2=(5 7 7 12 18 20 27)

newArr=()

i1=0
i2=0
while (( i1 < (${#arr1[@]}) || i2 < (${#arr2[@]}) )); do
	if (( i1 == (${#arr1[@]}) )); then
		newArr+=(${arr2[${i2}]})
		((i2++))
		continue
	fi
	if (( i2 == (${#arr2[@]}) )); then
		newArr+=(${arr1[${i1}]})
		((i1++))
		continue
	fi
	if (( ${arr1[${i1}]} < ${arr2[${i2}]} )); then
		newArr+=(${arr1[${i1}]})
		((i1++))
	else
		newArr+=(${arr2[${i2}]})
		((i2++))
	fi
done

echo ${newArr[@]}