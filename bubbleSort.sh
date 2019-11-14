#!/bin/bash

arr=(10 4 5 2 0 3 1 9 7 11 12 15 14 13)

len=${#arr[@]}

for ((i=0;i<len;i++)); do
	for ((j=0;j<len-1;j++)); do
		if (( ${arr[$j]} > ${arr[$((j+1))]})); then
			temp=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
	echo ${arr[@]}
done

echo ${arr[@]}
