#!/bin/bash

#VAR="Hello"

#echo "$VAR"

#echo $@
#echo "${0}"

#VAR="$1"
#echo "${VAR}"

echo "Enter your name"
read NAME
#conditional
if [[ "$NAME" = 'bob' ]] ;then
       echo "Hello Bob"
elif [[ "$NAME" = 'ted' ]] ;then
        echo "Hello Ted"
else
       echo "I don't know you"
fi

grep root /etc/passwd
RESULT=$?

if grep root /etc/passwd ;then
        echo "root is here"
else
        echo "root is not here"
fi
#echo "Hello ${NAME}"

#FILE="$(cat /etc/passwd)"
#echo "${FILE}"

#USERNAME="$(whoami)"
#echo "$USERNAME"
