#!/bin/bash

echo "Welcome to Arithmetic Computation & Sorting Problem"

read -p "Enter First Input in Number Format : " num1
read -p "Enter second Input in Number Format : " num2
read -p "Enter Third Input in Number Format : " num3

echo -e "First Input : $num1\nSecond Input : $num2\nThird Input : $num3 "

#AddandMulti=$(($num1+$num2*$num3))
#AddandMulti=$(($num1*$num2+$num3))
#AddandMulti=$(awk "BEGIN{print ($num3+$num1/$num2)}")
AddandMulti=$(awk "BEGIN{print ($num1%$num2+$num3)}")
echo "OutPut of Arithmetic Operation ( $num1%$num2+$num3 ) is : $AddandMulti"
