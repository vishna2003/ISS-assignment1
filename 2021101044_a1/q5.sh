#!/bin/bash

#part a
read str
let len=${#str}
for((i=0;i<len;i++))
do
arr[i]=${str:len-1-i:1}
done
for((i=0;i<len;i++))
do
echo -n ${arr[i]}
done
echo

#part b
for((i=0;i<len;i++))
do
echo -n ${arr[i]} | tr a-z b-za |tr A-Z B-ZA
done
echo

#part c
let h=len/2
for((i=h;i<len;i++))
do
echo -n ${arr[i]}
done
for((i=h-1;i>=0;i--))
do
echo -n ${arr[i]}
done
echo