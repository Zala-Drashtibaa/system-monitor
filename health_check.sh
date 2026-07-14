#!/bin/bash

# Debug mode status checker command dikhane ke liye
set -x

# 1. Title (Purana)
echo "=== SYSTEM HEALTH REPORT ===" > report.txt

# 2. Date and Time (Purana - Fixed to output into file)
echo "Date and Time:" >> report.txt
date >> report.txt

echo "" >> report.txt

# 3. Current User (Naya Basic Cmd)
echo "--- Current User Logged In ---" >> report.txt
whoami >> report.txt

echo "" >> report.txt

# 4. OS & Kernel Details (Naya Basic Cmd)
echo "--- OS & Kernel Version ---" >> report.txt
uname -a >> report.txt

echo "" >> report.txt

# 5. System Uptime (Naya Basic Cmd)
echo "--- How long system is running ---" >> report.txt
uptime -p >> report.txt

echo "" >> report.txt

# 6. Disk Usage (Purana)
echo "--- Disk Usage ---" >> report.txt
df -h / >> report.txt

echo "" >> report.txt

# 7. Memory Usage (Purana)
echo "--- Memory Usage ---" >> report.txt
free -h >> report.txt

echo "" >> report.txt

# 8. File Count (Naya Basic Cmd - Pipes validation)
echo "--- Total Files in Current Directory ---" >> report.txt
ls -l | wc -l >> report.txt

echo "Report generated successfully!"
