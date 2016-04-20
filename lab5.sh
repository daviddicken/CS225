#!/bin/bash

IFS=$'\n'

FILE=$( cat ~/medialab/medialist.txt)
DIR=$( ls ~/medialab )
FOUND="no"

for ListLine in $FILE ;do
	for MPGdir in $DIR ;do
		if [[ $ListLine = $MPGdir ]]
		then
		#	echo "Found $ListLine, adding to foundfiles.txt"
			#echo $ListLine >> foundfiles.txt
			FOUND="yes"
		#fi
		#if [[ $FOUND = 'no' ]] 
		#then
		#else
		#	echo "Item $ListLine not found, adding to lostfiles.txt"
			#echo $ListLine >> lostfiles.txt
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
