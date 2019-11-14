#!/bin/bash

arr=(10 80 30 90 40 50 70)
high=6

pivot=${arr[$high]}
j=-1;

for ((i=0;i<${#arr[@]}-1;i++)); do
	if (( arr[i] < pivot)); then
		((j++))
		temp=${arr[$i]}
		arr[$i]=${arr[$j]}
		arr[$j]=$temp
	fi
done
temp=${arr[$((j+1))]}
arr[$((j+1))]=${arr[$high]}
arr[$high]=$temp

echo ${arr[@]}