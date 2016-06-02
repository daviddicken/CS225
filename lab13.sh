#!/bin/bash
. ~/projects/CS225/lab13functions
SCRIPTname=${0##*/}

if [ -z $1 ] ;then
	echo " "
	echo "Usage: "$SCRIPTname" [argument]"
	#echo " "
	echo "Please enter either a:"
	echo "Social Security number"
	echo "Phone Number"
	echo "Credit Card Number or"
	echo "Ip address - As a argument."
else
	NUM=$1

	if check_ssn $NUM  ;then
		echo ""$NUM" is a valid SSN."
	else
		echo ""$NUM" is NOT a valid SSN."
	fi

	if check_pn $NUM ;then
		echo ""$NUM" is a valid phone number."
	else
		echo ""$NUM" is NOT a valid phone number."
	fi

	if check_ccn $NUM ;then
		echo ""$NUM" is a valid credit card number."
	else
		echo ""$NUM" is NOT a valid credit card number."
	fi

	if check_ip $NUM ;then
		echo ""$NUM" is a valid ip address."
	else
		echo ""$NUM" is NOT a valid ip address."
	fi
fi
