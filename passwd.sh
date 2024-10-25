#!/bin/bash
cut -d ":" -f1,3 /etc/passwd > /root/scripts/passwdh/`date +%Y:%m:%d-%H:%M`
find /root/scripts/passwdh -type f -ctime +2 -exec  rm {} \;

