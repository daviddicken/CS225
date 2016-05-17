#!/bin/bash

CLEANUP()
{
	rm -Rf $TMP
	exit
}

trap "CLEANUP" SIGINT

VAR=$(ls -1Ra /*)
TMP=$(mktemp)
COUNT="0"

for LINE in $VAR ;do
	if [[ ( "$LINE" == "." ) || ( "$LINE" == ".." ) ]] ;then
		:
	else
		((COUNT++))
		echo "File "$COUNT": "$LINE""
	fi
done  >> $TMP


#echo $VAR
#tmp=$(mktemp)

#echo $VAR >> $tmp

#echo $tmp

#read blank

#cleanup

