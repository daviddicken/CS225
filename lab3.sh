#!/bin/bash

if [[ "$USER" =  "root" ]] ;then
	echo "It is insecure to run this program as root"
	exit
elif [[ "$EUID" -lt "500" ]] ;then
	echo "The user id is less then 500"
	exit
fi

home=$(grep "$USER" /etc/passwd | cut -f6 -d:)
if [ $? = 0 ] ;then
	size=$(du -sh "$home" | awk -F' ' '{ print $1 }')
	echo "$home is $size"  
else
	echo "Home directory doesn't exist or is not readable."
fi

 
