#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
   echo "given number is $NUMBER is less then 10"
else
   echo "given number is $NUMBER is greater than 10 "
fi 

#-eq  equal to 
# -nq  not equal too
# -lt  less than
# -le less than or equal too 
# -gt greater than 
# -ge greater than or equal to