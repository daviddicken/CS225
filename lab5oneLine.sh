#!/bin/bash


for LINE in $( cat ~/medialab/medialist.txt ) ;do if [[ -f ~/medialab/$LINE ]] ;then echo $LINE >> foundfiles.txt; else echo $LINE >> lostfiles.txt ;fi done 
