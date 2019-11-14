#!/bin/bash

arr=(10 4 5 2 0 3 1 9 7)

len=${#arr[@]}

for ((i=0;i<len;i++)); do
	min=${arr[$i]}
	index=$i
	for ((j=i;j<len;j++)); do
		if ((${arr[$j]} < $min)); then
			min=${arr[$j]}
			index=$j
		fi
	done
	temp=${arr[$i]}
	arr[$i]=${arr[$index]}
	arr[$index]=$temp
done

echo ${arr[@]}
