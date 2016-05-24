

checkDir()
{
if [ ! -d "$1" ] ;then #"${DIRECTORY}/${YEAR}/${MONTH}/${DAY}" ] ;then
         mkdir -p "$1" #"${DIRECTORY}/${YEAR}/${MONTH}/${DAY}"
fi
}

copy()
{
cp $1 $2 #"$DIRECTORY/${YEAR}/${MONTH}/${DAY}"
}

move()
{
mv $1 $2 #"$DIRECTORY/${YEAR}/${MONTH}/${DAY}"
}

getTimeStamp()
{
TMP=$(stat --format '%y' "$1")
TMP=${TMP%%' '*}
YEAR=${TMP%%-*}
TMP=${TMP#*-}
MONTH=${TMP%%-*}
TMP=${TMP#*-}
DAY=${TMP%%-*}
}

noDave()
{
echo "     I can\'t stop now DAVE"
}
