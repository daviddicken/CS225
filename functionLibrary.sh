
# send in path to check and create
checkDir()
{
if [ ! -d "$1" ] ;then 
         mkdir -p "$1" 
fi
}

# send in variable to copy $1 and variable to copy to $2
copy()
{
cp $1 $2 
}

# send in variable to move $1 and variable to move to $2
move()
{
mv $1 $2 
}

# send in line to check
getTimeStamp()
{
TMP=$(stat --format '%y' "$1")
TMP=${TMP%%' '*}
YEAR=${TMP%%-*}
TMP=${TMP#*-}
MONTH=${TMP%%-*}
TMP=${TMP#*-}
DAY=${TMP%%-*}

MONTH=$(convertMonth $MONTH)
}

noDave()
{
echo "     Sorry Dave, I'm afraid I can't allow you to do that..."
}

convertMonth()
{
case $1 in
	1|01) echo "Jan" ;;
	2|02) echo "Feb" ;;
	3|03) echo "March" ;;
	4|04) echo "April" ;;
	5|05) echo "May" ;;
	6|06) echo "June" ;;
	7|07) echo "July" ;;
	8|08) echo "Aug" ;;
	9|09) echo "Sep" ;;
	10) echo "Oct" ;;
	11) echo "Nov" ;;
	12) echo "Dec" ;;
	*) ;;
esac
}

theTRAP()
{
opt1=$1
opt2=$2
opt3=$3

case $opt1 in
	exit) trap "$( exit)" ;;
	noexit) trap "noDave" ;;

}

