#!/bin/bash
echo Enter first string:
read s1
echo Enter second string:
read s2
s3=$s1$s2
len=${#s3}
echo Concatinated string is $s3 of length $len 