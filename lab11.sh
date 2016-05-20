#!/bin/bash
trap "echo         I can't stop now DAVE" SIGINT
. ~/projects/CS225/functionLibrary.sh

sCRIPTNAME=${0##*/}
DIRECTORY=~/timefiles
LSDIR=$(find $DIRECTORY)

while getopts :fh opt ;do
	case $opt in
		f) FORCE='true' ;;
		h) echo "Usage: $SCRIPTNAME [options]"
		   echo " "
		   echo "Options:"
		   echo " -f	forces file to be moved instead of copying them"
		   echo " -h	prints out help page"
		   exit 0
		;;
		*) echo "Invalid Option: Try '$SCRIPTNAME -h' for more information."
		   exit 1
		;;
		esac
done
shift $(($OPTIND-1))

for LINE in $LSDIR ;do
	if [ ! -d $LINE ] ;then
		getTimeStamp
		checkDir
		if [ -z $FORCE ] ;then
			copy
		else			
			move
		fi	
	fi
done




#FILELINE=$(stat --format '%y'

#echo "$DIRECTORY"
#for LINE in $DIRECTORY ;do
#	LINE=${LINE#' '}
#	echo "$LINE"
#done

#VAR=${
