#!/bin/bash

echo "Please enter a number: "
read NUM

expr $NUM + 1 1>/dev/null                   #test if integer
if [ $? = 0 ] ;then
   if [[ "$NUM" != '0' ]] ;then
      if ((NUM%2==0)) ;then
         echo "${NUM} is a even number."
      else
         echo "${NUM} is a odd number."
      fi
   else
     echo "${NUM} is a even number."
   fi 
else
  echo "Invalid number."
fi
