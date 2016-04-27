#!/bin/bash

oldIFS=$IFS
IFS=$'\n'

ls -1 ~/medialab > LABlist
grep "filename" ~/medialab/media.xml | awk -F'[<|>]' '{ print $3 }' | sort | uniq > xmlLIST

echo "Files not in media.xml:"
comm -23 LABlist xmlLIST
echo "Files not in medialab directory:"
comm -13 LABlist xmlLIST

echo "`comm -23 LABlist xmlLIST | wc -l` media files in medialab directory that are NOT listed in media.xml."
echo "`comm -13 LABlist xmlLIST | wc -l` media files in media.xml that are NOT in medialab directory."

IFS=$oldIFS

