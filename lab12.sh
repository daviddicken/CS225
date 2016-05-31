#!/bin/bash
resetIFS()
{
IFS=$OLDIFS
exit
}

OLDIFS=$IFS
IFS=$'\n'
trap "resetIFS" SIGNT

declare -a FNAME LNAME COMPANY STREET CITY COUNTY STATE ZIP HPHONE WPHONE EMAIL WEBURL
SEARCHFILE=$( cat /var/share/CS225/addresses.csv )
COUNTER="0"


for LINE in $SEARCHFILE ;do
	LINE=${LINE#\"}
	FNAME[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"} 
	LNAME[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	COMPANY[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	STREET[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	CITY[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	COUNTY[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	STATE[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	ZIP[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	HPHONE[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	WPHONE[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	EMAIL[$COUNTER]=${LINE%%\"*}
	LINE=${LINE#*,\"}
	WEBURL[$COUNTER]=${LINE%%\"*}

	echo \""${FNAME[$COUNTER]}"\",\""${LNAME[$COUNTER]}"\",\""${COMPANY[$COUNTER]}"\",\""${STREET[$COUNTER]}"\",\""${CITY[$COUNTER]}"\",\""${COUNTY[$COUNTER]}"\",\""${STATE[$COUNTER]}"\",\""${ZIP[$COUNTER]}"\",\""${HPHONE[$COUNTER]}"\",\""${WPHONE[$COUNTER]}"\",\""${EMAIL[$COUNTER]}"\",\""${WEBURL[$COUNTER]}"\"

	((COUNTER++))
done


IFS=$OLDIFS
