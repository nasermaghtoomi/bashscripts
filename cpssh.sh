#!/bin/bash
if [ $1 = --help ]
then
	echo "./cpssh.sh [username] [Detination ip] [Destination Password]"
	exit 0
fi
if ping -c2 $2 > /dev/null
then
sshpass -p $3 scp $1@$2:/etc/passwd /root
echo "Done"
else
echo " the server is not accessible"
fi
