#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: SHASHANK KUMAR

PACKAGE="python3"

echo "========================================"
echo "   FOSS Package Inspector"
echo "========================================"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    
    # Show version, license, summary
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description' | head -n 3
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------"

# Case statement for philosophy note
case $PACKAGE in
    python3)
        echo "Python: a simple, powerful language built by community for everyone"
        ;;
    git)
        echo "Git: version control system that revolutionized collaboration"
        ;;
    vlc)
        echo "VLC: open-source media player that plays almost everything"
        ;;
    apache2)
        echo "Apache: backbone of the open web"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

echo "========================================"
