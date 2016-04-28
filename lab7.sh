#!/bin/bash

if [[ -z $1 ]]
then
	echo "Try 'basename --help' for more information."
	exit
elif [[ $1 == / ]]
then
	echo "/"
	exit
fi

path=$1

file=${path##*/}

if [[ -z $file ]]
then
	path=${path%/*};file=${path##*/}
	echo "$file"
else
	echo "$file"	
fi
