#!/bin/bash

scriptName=${0##*/}
while getopts :dvhn:l: opt ;do
        case $opt in
                d) set -x ;;
                v) VERBOSE='true' ;;
                h) echo "Usage:  $scriptName [options]"
		   echo "	$scriptName -n NAME"
	           echo "	$scriptName -l DIR"
		   echo " "
	           echo "Options:"
		   echo "  -d,		turns on debugging"
		   echo "  -v,		sets the VERBOSE variable to true"
		   echo "  -h,		prints out help page"
		   echo "  -l, DIR 	list the directory"
		   echo "  -n, NAME	prints name"
		;;
                n) name="$OPTARG"
			echo "Hi $name" ;;
		l) dir="$OPTARG"
			read -p "Would you like to display $dir contents: " ANSWER
			case "$ANSWER" in
			[yY]|[yY][eE][sS])
				if [  "$VERBOSE" == "true" ]
					then ls -l $dir
					else ls $dir
				fi ;;
			[nN]|[nN][oO]) : ;;
			*)
				echo "Invalid answer."
				exit 1 ;;
			esac
		 ;;
                *) echo "Try '$scriptName -h' for more information."
		    exit 1 ;;
        esac
done
shift $(($OPTIND-1))
