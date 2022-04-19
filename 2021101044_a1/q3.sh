#!/bin/bash

echo "Enter the filename:"
read file

#part a
wc -c < $file

#part b
wc -l < $file

#part c
wc -w < $file 

#part d
awk '{ print "Line No:<"NR">-Count of Words:["NF"]" }' $file 

#part e
grep -wo  '[[:alnum:]]\+' $file > tmp.txt
cat -n tmp.txt | sort -k2 | uniq -cdf1 | sort -nk2  > ext.txt
while read line; do
echo "$(echo $line | awk '{print "Word:<" $3 ">-Count of repetition:[" $1 "]"}')"
done < ext.txt
rm ext.txt
rm tmp.txt