#!/bin/bash

#The access path to this file must be added to the bash_logout file in the user's home directory
tar -zcvf "$USER.gz.tar" $HOME
mv "$USER.gz.tar" /backup



