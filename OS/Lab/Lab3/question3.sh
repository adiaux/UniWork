#!/bin/bash
clear
sum=0
i="y"

echo " Enter one no."
read n1
echo "Enter second no."
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "6.Uniary addition"
echo "7.Uniary Subtraction"
echo "Enter your choice"
read ch
case $ch in
    1)sum=`expr $n1 + $n2`
     echo "Sum ="$sum;;
        2)sum=`expr $n1 - $n2`
     echo "Sub = "$sum;;
    3)sum=`expr $n1 \* $n2`
     echo "Mul = "$sum;;
    4)sum=`expr $n1 / $n2`
     echo "Div = "$sum;;
    5)sum=`expr $n1 % $n1`
     echo "Mod = "$sum;;
    6)sum=`expr $n1 + 1`
     echo "Uniary addition = "$sum;;
    7)sum=`expr $n1 - 1`
     echo "Uniary subtraction = "$sum;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    