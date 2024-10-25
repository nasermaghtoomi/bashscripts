#!/bin/bash
cat ip.list | while read line
do
echo "================" >> /root/scripts/pingresult/`date +%Y:%m:%d-$HOSTNAME`
ping -c2 $line > /dev/null
if [ $? -eq 0 ]
then
echo "$line is pingable " >> /root/scripts/pingresult/`date +%Y:%m:%d-$HOSTNAME`
else
echo "$line is not pingable " >> /root/scripts/pingresult/`date +%Y:%m:%d-$HOSTNAME`
fi
done
