#!/bin/bash

file="quotes.txt"
> speech.txt
sed -i '/^[[:space:]]*$/d' quotes.txt
awk -F~ '{print $2 " once said, \"" $1 "\""}' quotes.txt>>speech.txt