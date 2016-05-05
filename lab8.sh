#!/bin/bash

searchFile=/var/share/CS225/addresses.csv

file=$( tail -n1 $searchFile )

file=${file#\"}
FNAME=${file%%\"*}
file=${file#*,\"} 
LNAME=${file%%\"*}
file=${file#*,\"}
COMPANY=${file%%\"*}
file=${file#*,\"}
STREET=${file%%\"*}
file=${file#*,\"}
CITY=${file%%\"*}
file=${file#*,\"}
COUNTY=${file%%\"*}
file=${file#*,\"}
STATE=${file%%\"*}
file=${file#*,\"}
ZIP=${file%%\"*}
file=${file#*,\"}
HPHONE=${file%%\"*}
file=${file#*,\"}
WPHONE=${file%%\"*}
file=${file#*,\"}
EMAIL=${file%%\"*}
file=${file#*,\"}
WEBURL=${file%%\"*}

echo "First name:	$FNAME"
echo "Last name:	$LNAME"
echo "Company:	$COMPANY"
echo "Street:		$STREET"
echo "City:		$CITY"
echo "State:		$STATE"
echo "ZIP:		$ZIP"
echo "Home phone:	$HPHONE"
echo "Work phone:	$WPHONE"
echo "Email:		$EMAIL"
echo "Web:		$WEBURL"

