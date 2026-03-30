#!/bin/bash
# Script 4: Log File Analyzer
# Author: SHASHANK KUMAR

# Usage: ./script4.sh logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

echo "========================================"
echo "        Log File Analyzer"
echo "========================================"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry (do-while style) if file is empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting for content..."
    sleep 2
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo "----------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "========================================"
