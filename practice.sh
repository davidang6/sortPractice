#!/bin/bash

arr=(10 80 30 90 40 50 70)

high=${#arr[@]}-1
pivot=${arr[$high]}
j=-1

for ((i=0;i<high;i++)); do
	if ((arr[i] < pivot)); then
		((j++))
		temp=${arr[$j]}
		arr[$j]=${arr[$i]}
		arr[$i]=$temp
	fi
done
temp=${arr[$((j+1))]}
arr[$((j+1))]=$pivot
arr[$high]=$temp

echo ${arr[@]}