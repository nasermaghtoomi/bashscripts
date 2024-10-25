#!/bin/bash
for ((i=1;i<=20;i++))
do
read -p "enter a number: " num
array+=($num)
done
echo ${array[@]}
min=${array[0]}
max=${array[0]}
avg=0
for i in ${array[@]}
do
if [ $min -gt $i ]
then
min=$i
elif [ $max -lt $i ]
then
max=$i
fi
avg=`expr $avg + $i`
done
echo "minimum is $min"
echo "maximum is $max"
echo  "average is `expr $avg / ${#array[*]}`"
