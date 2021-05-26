#!/bin/bash

echo "Welcome to Arithmetic Computation & Sorting Problem"

declare -A Dict

read -p "Enter First Input in Number Format : " num1
read -p "Enter second Input in Number Format : " num2
read -p "Enter Third Input in Number Format : " num3

echo -e "First Input : $num1\nSecond Input : $num2\nThird Input : $num3 "

Dict[a+b*c]=$(($num1+$num2*$num3))
Dict[a*b+c]=$(($num1*$num2+$num3))
Dict[c+a/b]=$(awk "BEGIN{print ($num3+$num1/$num2)}")
Dict[a%b+c]=$(awk "BEGIN{print ($num1%$num2+$num3)}")

echo "OutPut of Arithmetic Operation Stored inside Dictionary is"
for Key in ${!Dict[@]}
do
echo $Key = ${Dict[$Key]}
done
