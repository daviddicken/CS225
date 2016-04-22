#!/bin/bash


if $(cat /etc/passwd) ;then
        home=$(grep $"USER" /etc/passwd | cut -f6 -d:)
	echo "$home"
else
        echo "Home directory doesn't exist or is not readable."
fi
