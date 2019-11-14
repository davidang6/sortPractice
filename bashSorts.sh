#!/bin/bash

array=(10 4 5 2 0 3 1 9 7)

echo "Bubble sort"
echo ${array[*]}

len=${#array[@]}

for ((i=0; i<$len; i++))
do
    for ((j=0; j<$len-i-1; j++))
    do
        if ((${array[$j]} > ${array[$((j+1))]}))
        then
            #swap
            # swap $j array
            temp=${array[$j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
echo "Sorted with bubble sort"
echo ${array[*]}
echo ""

array=(10 4 5 2 0 3 1 9 7)
echo "Insertion sort"
echo ${array[*]}

len=${#array[@]}

for ((i = 1; i<$len; i++))
do
    key=${array[$i]}
    j=$i-1
    while (((j>=0) && (array[$j]>$key)))
    do
        #swap
        array[$((j+1))]=${array[$j]}
        j=$j-1
    done
    array[$((j+1))]=$key
done

echo "Sorted with insertion sort"
echo ${array[*]}
echo ""

array=(10 4 5 2 0 3 1 9 7)
echo "Insertion sort (my way)"
echo ${array[*]}

len=${#array[@]}

for ((i = 1; i<$len; i++))
do
    j=$i
    while (( (j>0) && (array[$j] < array[$((j-1))]) ))
    do
        #swap
        temp=${array[$j]}
        array[$j]=${array[$((j-1))]}
        array[$((j-1))]=$temp
        j=$j-1
    done
done

echo "Sorted with insertion sort (my way)"
echo ${array[*]}
echo ""

array=(10 4 5 2 0 3 1 9 7)
echo "Selection Sort"
echo ${array[*]}

len=${#array[@]}

for ((i = 0; i<len-1; i++))
do
    min=${array[$i]}
    index=$i
    for ((j = i+1; j<len; j++))
    do
        if ((${array[$j]} < $min))
        then
            min=${array[$j]}
            index=$j
        fi
    done
    #swap
    temp=${array[$i]}
    array[$i]=${array[$index]}
    array[$index]=$temp
done

echo "Sorted with Selection sort"
echo ${array[*]}
echo ""


array=(10 4 5 2 0 3 1 9 7)
echo "Odd-Even Sort"
echo ${array[*]}

len=${#array[@]}

sorted=0;

while [ "$sorted" -eq 0 ]
do
    sorted=1;

    #sort the even indexes
    for ((i=0; i<$len-1; i+=2))
    do
        if ((${array[$i]} > ${array[$((i+1))]}))
        then
            #swap
            temp=${array[$i]}
            array[$i]=${array[$((i+1))]}
            array[$((i+1))]=$temp
            sorted=0;
        fi
    done

    #sort the odd indexes
    for ((j=1; j<$len-1; j+=2))
    do
        if ((${array[$j]} > ${array[$((j+1))]}))
        then
            #swap
            temp=${array[$j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
            sorted=0;
        fi
    done
done

echo "Sorted with Odd-Even sort"
echo ${array[*]}
echo ""