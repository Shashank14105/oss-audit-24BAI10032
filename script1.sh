#!/bin/bash
# Script 1: System Identity Report
# Author: SHASHANK KUMAR | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="SHASHANK KUMAR"
SOFTWARE_CHOICE="Python"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# --- Python Info ---
PYTHON_VERSION=$(python3 --version 2>&1)

# --- Display Output ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "OS        : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Home Dir  : $HOME"
echo "Uptime    : $UPTIME"
echo "Date/Time : $DATE"
echo "----------------------------------------"
echo "Python Version : $PYTHON_VERSION"
echo "----------------------------------------"
echo "License Info:"
echo "This system is based on open-source software, typically licensed under the GNU GPL."
echo "========================================"

