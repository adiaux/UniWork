#!/bin/bash
i=0
n=9
echo "Enter the numbers of first 3x3 matrix"
while [ $i -lt $n ] 
do
    read matrix1[$i] 
    i=`expr $i + 1` 
done
echo "Enter the numbers of second 3x3 matrix"
i=0
while [ $i -lt $n ] 
do
    read matrix2[$i] 
    i=`expr $i + 1` 
done
rows=3
cols=3
echo "First matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix1[index]} "
  done
  echo
done
 
echo "Second matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix2[index]} "
  done
  echo
done
 
k=0
matrix3=()
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    matrix3[k]=$((${matrix1[index]} + ${matrix2[index]}))
    k=$((k+1))
  done
done
echo "Addition of two matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix3[index]} "
  done
  echo
done