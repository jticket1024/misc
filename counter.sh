#!/bin/bash
#set variables
num1=$1
num2=$2
#find out which way to count:
#if the first number is higher count down, if the second is higher count up.
if [ "$num1" -gt "$num2" ] ; then
while [ "$num1" -ge "$num2" ] ; do
echo "$num1"
num1=$(($num1 - 1))
done
else
while [ "$num1" -le "$num2" ] ; do
echo "$num1"
num1=$(($num1 + 1))
done
fi
exit 0
