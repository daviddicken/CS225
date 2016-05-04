#!/bin/bash
shopt -s extglob

path=$1

if [[ -z $path ]]
then
	echo "Try 'basename --help' for more information."
	exit
elif [[ $path == / ]]
then
	echo "/"
	exit
fi

path=${path%%+(/)}  #gets rid off trailing /'s
file=${path##*/}

if [[ -z $file ]]
then
	echo "/"
else
	echo "$file"
fi
