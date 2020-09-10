#!/bin/bash
N=4
i=1
sum=0
mul=1
echo "Enter Numbers"
while [ $i -le $N ]
do
  read num               
  sum=$((sum + num))     
  mul=$((mul * num))
  i=$((i + 1))
done
avg=$(echo $sum / $N | bc -l)
printf "Average $avg Sum $sum Product $mul"
