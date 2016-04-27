#!/bin/bash

oldIFS=$IFS
IFS=$'\n'

FILE=$( cat ~/medialab/medialist.txt)
DIR=$( ls ~/medialab )
FOUND="no"

for ListLine in $FILE ;do
	for MPGdir in $DIR ;do
		if [[ $ListLine = $MPGdir ]]
		then
			FOUND="yes"
		fi
	done
	if [[ $FOUND = 'yes' ]]
	then
		echo $ListLine >> foundfiles.txt
	else	
		echo $ListLine >> lostfiles.txt
	fi
FOUND="no" 
done

IFS=$oldIFS

# if [[ $ListLine -e ~/medialab ]]
