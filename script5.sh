#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: SHASHANK KUMAR

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo "Answer three questions to generate your manifesto."
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and output file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing manifesto
echo "----------------------------------------" > $OUTPUT
echo "        Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Author: SHASHANK KUMAR" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I regularly use $TOOL as part of my daily workflow." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share without restriction." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and make it freely available to everyone." >> $OUTPUT
echo "I believe open-source software empowers innovation, collaboration, and transparency in the digital world." >> $OUTPUT

echo "" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT

# Alias concept (demonstration in comment)
# You can create an alias like:
# alias manifesto='./script5.sh'

# Output
echo ""
echo "Manifesto saved to $OUTPUT"
echo "========================================"
echo ""
cat $OUTPUT
