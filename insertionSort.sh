#!/bin/bash

arr=(10 4 5 2 0 3 1 9 7)

len=${#arr[@]}

for (( i=1; i<len; i++)); do
	j=$i
	while (((j>0) && (arr[$j] < arr[$((j-1))]))); do
		temp=${arr[$j]}
		arr[$j]=${arr[$((j-1))]}
		arr[$((j-1))]=$temp
		j=$j-1
	done
done

echo ${arr[@]}