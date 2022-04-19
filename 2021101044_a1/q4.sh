#!/bin/bash

read A
echo $A >> 1.txt
cat 1.txt | tr ',' '\n' >> 2.txt 
#echo "${A[@]}"
#echo ${A[@]}
let i=0
#let j=0

while read line
do
A[i]=$line
i=$((i+1))
done <2.txt
rm 1.txt
rm 2.txt

let cnt=${#A[@]}
for ((i = 0; i<cnt; i++))
do  
    for((j = 0; j<cnt-i-1; j++))
    do
        if [ ${A[j]} -gt ${A[$((j+1))]} ]
        then
            tmp=${A[j]}
            A[$j]=${A[$((j+1))]}  
            A[$((j+1))]=$tmp
        fi
    done
done

echo ${A[@]}

