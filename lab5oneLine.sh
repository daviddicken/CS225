#!/bin/bash

#This is my lab5 in one line. My other submission is the my actual shell script
#This is awesome and I just had to show it off. Sorry for waisting your time :)

for LINE in $( cat ~/medialab/medialist.txt ) ;do if [[ -e ~/medialab/$LINE ]] ;then echo $LINE >> foundfiles.txt; else echo $LINE >> lostfiles.txt ;fi done 
