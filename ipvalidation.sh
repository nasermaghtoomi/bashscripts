#!/bin/bash
read -p "enter ip address: " ip
ip=`echo $ip |tr ' ' '!'`
for i in `echo $ip|tr '.' ' '`
do
if [ $i -gt 255 ] || [ $i -lt 0 ] || [ `echo $i|grep '[a-z]'` ] || [ `echo $i|grep '[/!?؟@#$%^:"&*)(]'` ]
then  
echo "$ip is invalid ip address"
exit 1
elif [ `echo $ip|tr '.' ' ' | wc -w` -ge 5 ] || [ `echo $ip|tr '.' ' ' |wc -w` -lt 4 ]
then
echo "$ip is invalid ip address"
exit 1
fi 2> /dev/null
done
ping -c2 $ip > /dev/null
if [ $? -eq 0 ]
then
echo "$ip is available"
else
echo "$ip is not available"
fi
