#!/bin/bash

file=$( tail -n1 /var/share/CS225/addresses.csv )

file=${file#\"}
FNAME=${file%%\"*}
file=${file#*\"};file=${file#*\"}
LNAME=${file%%\"*}
file=${file#*\"};file=${file#*\"}
COMPANY=${file%%\"*}
file=${file#*\"};file=${file#*\"}
STREET=${file%%\"*}
file=${file#*\"};file=${file#*\"}
CITY=${file%%\"*}
file=${file#*\"};file=${file#*\"}
file=${file#*\"};file=${file#*\"}
STATE=${file%%\"*}
file=${file#*\"};file=${file#*\"}
ZIP=${file%%\"*}
file=${file#*\"};file=${file#*\"}
HPHONE=${file%%\"*}
file=${file#*\"};file=${file#*\"}
WPHONE=${file%%\"*}
file=${file#*\"};file=${file#*\"}
EMAIL=${file%%\"*}
file=${file#*\"};file=${file#*\"}
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

