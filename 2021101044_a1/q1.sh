#!/bin/bash

sed -i '/^[[:space:]]*$/d' quotes.txt
#cat quotes.txt

cat -n quotes.txt | sort -k2 -k1n  | uniq -f1 | sort -nk1,1 | cut -f2-