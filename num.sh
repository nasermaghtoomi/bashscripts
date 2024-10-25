#!/bin/bash
read -p "enter a number: " num
if [ $num -gt 10 ]
then 
echo "greater than 10 "
elif [ $num -lt 10 ]
then
echo "less than 10"
else
echo "equal 10"
fi
