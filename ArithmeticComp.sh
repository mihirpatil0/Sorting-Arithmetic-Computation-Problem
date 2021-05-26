#!/bin/bash

echo "Welcome to Arithmetic Computation & Sorting Problem"

declare -A Dict
declare -a ArithArray

read -p "Enter First Input in Number Format : " num1
read -p "Enter second Input in Number Format : " num2
read -p "Enter Third Input in Number Format : " num3

echo -e "First Input : $num1\nSecond Input : $num2\nThird Input : $num3 "

Dict[a+b*c]=$(($num1+$num2*$num3))
Dict[a*b+c]=$(($num1*$num2+$num3))
Dict[c+a/b]=$(($num3+$num1/$num2))
Dict[a%b+c]=$(($num1%$num2+$num3))

echo "OutPut of Arithmetic Operation Stored inside Dictionary is"

counter=0
for Key in ${!Dict[@]}
do
	echo $Key = ${Dict[$Key]}
	ArithArray[counter++]=${Dict[$Key]}
done

echo "Following are the elemennts of an Array"
for i in ${!ArithArray[@]}
do
	echo "Result[$i] = ${ArithArray[$i]}"
done
echo "--------------------"
ArrayLth=${#ArithArray[@]}
temp=0
for  (( i=0; i<$ArrayLth; i++ ))
do
        for (( j=$((i+1)); j<$ArrayLth; j++ ))
        do
                if [ ${ArithArray[i]} -lt ${ArithArray[j]} ]
                then
                        temp=${ArithArray[i]}
                        ArithArray[i]=${ArithArray[j]}
                        ArithArray[j]=$temp
                fi
        done
done

echo "Array sorted by Descending Order"
echo "-----------------------------"
echo "${ArithArray[@]}"
echo "-----------------------------"

for  (( i=0; i<$ArrayLth; i++ ))
do
        for (( j=$((i+1)); j<$ArrayLth; j++ ))
        do
                if [ ${ArithArray[i]} -gt ${ArithArray[j]} ]
                then
                        temp=${ArithArray[i]}
                        ArithArray[i]=${ArithArray[j]}
                        ArithArray[j]=$temp
                fi
        done
done

echo "Array sorted by Ascending Order"
echo "-----------------------------"
echo "${ArithArray[@]}"
echo "-----------------------------"
