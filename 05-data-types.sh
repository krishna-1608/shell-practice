#!/bin/bash

#everything in shell treats as a string
NUMBER1=120
NUMBER2=100

SUM=$(($NUMBER1+$NUMBER2)) 

echo " SUM is : $SUM "

#array 

FRUITS=("apple" "banana" "grapes")

echo "all fruits : ${FRUITS[@]}"
echo "first fruit : ${FRUITS[0]}"