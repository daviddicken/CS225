#!/bin/bash

xmlLIST=$( sort ~/medialab/media.xml | uniq | grep "filename" | awk -F'>' '{ print $2 }' | awk -F'<' '{ print $1 }' | grep -vwE "(NULL)" )

labLIST=$( ls ~/medialab | grep "\.mp"  )

LAB=~/medialab 
XML=~/medialab/media.xml

rm -f NOTnMEDIALAB.txt
rm -f NOTnXML.txt

echo "Files not in medialab directory:" >> NOTnMEDIALAB.txt
echo "Files not in media.xml:" >> NOTnXML.txt 

for LINE in $xmlLIST ;do
	if [[ -e $LAB/$LINE ]]
	then
	:	
	else	
		echo $LINE >> NOTnMEDIALAB.txt
		(( NOTnLABcounter++ ))
	fi
done

for LINE in $labLIST ;do
	if [[ -e $XML/$LINE ]]
	then
	:
	else
		echo $LINE >> NOTnXML.txt
		(( NOTnXMLcounter++ ))
	fi
done

echo "$NOTnXMLcounter media files in medialab directory that are NOT listed in media.xml."
echo "$NOTnLABcounter media files in media.xml that are NOT in medialab directory."

