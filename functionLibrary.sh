

checkDir()
{
if [ ! -d "${DIRECTORY}/${YEAR}/${MONTH}/${DAY}" ] ;then
         mkdir -p "${DIRECTORY}/${YEAR}/${MONTH}/${DAY}"
fi
}

copy()
{
cp $LINE "$DIRECTORY/${YEAR}/${MONTH}/${DAY}"
}

move()
{
mv $LINE "$DIRECTORY/${YEAR}/${MONTH}/${DAY}"
}

getTimeStamp()
{
TMP=$(stat --format '%y' "$LINE")
TMP=${TMP%%' '*}
YEAR=${TMP%%-*}
TMP=${TMP#*-}
MONTH=${TMP%%-*}
TMP=${TMP#*-}
DAY=${TMP%%-*}
}

