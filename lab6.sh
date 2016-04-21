#!/bin/bash

FILE=$( cat ~/medialab/medialist.txt)
MAIN=~/medialab
Found='0'
Lost='0'

rm -f lostfiles.txt
rm -f foundfiles.txt

for LINE in $FILE ;do
	if [[ -e $MAIN/$LINE ]]
	then
		echo $LINE >> foundfiles.txt
		(( Found++ ))
	else	
		echo $LINE >> lostfiles.txt
		(( Lost++ ))
	fi
done

echo "Lost - $Lost"
echo "Found - $Found"

