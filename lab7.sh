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

path=${path%%+(/)}
file=${path##*/}

echo "$file"

