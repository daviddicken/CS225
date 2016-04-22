#!/bin/bash

LIST="1 2 3 4 5"
LIST="1,2,3,4,5"
OLDIFS="$IFS"
IFS=$','

for item in $LIST  #item is a variable we just created
do
	echo "Item $item"
done

IFS="$OLDIFS"


for item in $@
do
	echo "Item $item"
done

VAR=$(cat /etc/passwd)
tac is cat backwards

IFS=$'\n'
for line in $VAR ;do
 	echo "Item $line"
	if [[ line =~ root* ]] ;then
		break  #continue skips that line and continues the loop
# break2 will break out of 2 loops
	fi
done > testfile.txt

 echo 1 2 3 4 | rev 

for i in $(seq 1 1000) ;do

done



NUM=0
while [ "$NUM" -le '10' ] ;do
	if [[ $NUM -eq '1' ]] ;then
		echo "Ran this $NUM time"
	else
		echo "Ran this $NUM times"
	fi
	(( NUM++ ))
done

# :noh

until [ "$NUM" -ge '10' ] ;do
	if [[ "$NUM" -eq 1 ]] ;then 
		echo "bla bla vla"
	else
		echo "blaa blaa blaa"
	fi
done
