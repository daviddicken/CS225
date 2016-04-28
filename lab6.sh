#!/bin/bash

xmlLIST=$( grep "filename" ~/medialab/media.xml | awk -F'[<|>]' '{ print $3 }' | sort | uniq )

labLIST=$( ls -1 ~/medialab )

LAB=~/medialab
oldIFS=$IFS 
IFS=$'\n'

#NOTnXMLcounter='0'
#NOTnLABcounter='0'

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
	if [[ ! -f $LAB/$LINE ]]
	then	
		echo $LINE 
		(( NOTnLABcounter++ ))
	fi
done

echo "$NOTnXMLcounter media files in medialab directory that are NOT listed in media.xml."
echo "$NOTnLABcounter media files in media.xml that are NOT in medialab directory."

IFS=$oldIFS
