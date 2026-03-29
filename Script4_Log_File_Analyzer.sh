#!/bin/bash

STUDENT_NAME="Shoubhik Bhattacharya"
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "======================================"
echo " Log Analyzer - $STUDENT_NAME"
echo "======================================"

if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

while read LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
