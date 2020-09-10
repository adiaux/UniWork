#!/bin/bash
echo "Enter a filename"
read file
val1=$(head -1 $file)
val2=$(tail -1 $file)
printf "The largest number is $val2\nThe smallest number is $val1"