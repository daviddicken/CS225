#!/bin/bash

xmlLIST=$( grep "filename" ~/medialab/media.xml | awk -F'[<|>]' '{ print $3 }' | sort | uniq | grep -vwE "(NULL)" )

labLIST=$( ls -1 ~/medialab )

LAB=~/medialab 
XML=~/medialab/media.xml
IFS=$'\n'

echo "Files not in media.xml:"
for LINE in $labLIST ;do
	if ! grep -q "$LINE" ~/medialab/media.xml
        then
                echo $LINE
                (( NOTnXMLcounter++ ))
        fi
done

echo "Files not in medialab directory:"
for LINE in $xmlLIST ;do
	if [[ -e $LAB/$LINE ]]
	then
	:	
	else	
		echo $LINE
		(( NOTnLABcounter++ ))
	fi
done

echo "$NOTnXMLcounter media files in medialab directory that are NOT listed in media.xml."
echo "$NOTnLABcounter media files in media.xml that are NOT in medialab directory."

