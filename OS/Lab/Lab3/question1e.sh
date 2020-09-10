#!/bin/bash
echo Enter the filename
read file
val=$(grep -o "[[:digit:]]" "$file" | wc -l)
printf "Number of numbers are $val"