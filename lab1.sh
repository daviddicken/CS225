#!/bin/bash

echo "Please enter a number: "
read NUM

expr $NUM + 0 1> /dev/null #try's to do math and returns a error code
if [ $? = 0 ] ;then 
     if   [[ "$NUM" -gt '5' ]] ;then
              echo "${NUM} is greater then 5"
     elif [[ "$NUM" -lt '5' ]] ;then
              echo "${NUM} is less then 5"
     elif [[ "$NUM" -eq '5' ]] ;then
              echo "${NUM} is equal to 5"
     else 
              echo "Not a valid number."
      fi
else
      echo "Not a valid number."
fi



