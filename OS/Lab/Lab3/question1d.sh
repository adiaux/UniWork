#!/bin/bash
read -p "Enter number 1: " numb1
read -p "Enter a number 2: " num2
temp=$numb1
numb1=$num2
num2=$temp
printf "\nThe first number is $numb1 and second is $num2\n"
