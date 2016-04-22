#!/bin/bash

xmlLIST=$( cat ~/medialab/media.xml | grep "\.mp" | awk -F'>' '{ print $2 }' | awk -F'<' '{ print $1 }' )

labLIST=$( ls ~/medialab | grep "\.mp"  )

LAB=~/medialab 
XML=~/medialab/media.xml

NOTnLAB='0'
NOTnXML='0'

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
		(( NOTnLAB++ ))
	fi
done

for Line in $labLIST ;do
	if [[ -e $XML/$Line ]]
	then
	:
	else
		echo $Line >> NOTnXML.txt
		(( NOTnXML++ ))
	fi
done

echo "$NOTnXML"
echo "$NOTnLAB"

