#!/bin/bash

FILE=$( cat ~/medialab/medialist.txt)
MAIN=~/medialab
Found='0'
Lost='0'

rm lostfiles.txt
rm foundfiles.txt

for LINE in $FILE ;do
	if [[ -e $MAIN/$LINE ]]
	then
		echo $ListLine >> foundfiles.txt
		(( Found++ ))
	else	
		echo $ListLine >> lostfiles.txt
		(( Lost++ ))
	fi
done
echo "Lost - $Lost"
echo "Found - $Found"

