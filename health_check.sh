#!/bin/bash

# Target report file
OUTPUT_FILE="report.txt"

echo "=== SYSTEM HEALTH REPORT ===" > $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "============================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 1. Who is running this script? (Basic User Info)
echo "--- Current Logged-in User ---" >> $OUTPUT_FILE
whoami >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 2. Operating System & Kernel Info
echo "--- OS and Kernel Details ---" >> $OUTPUT_FILE
uname -srm >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 3. CPU Core Info
echo "--- CPU Architecture Summary ---" >> $OUTPUT_FILE
lscpu | grep "Model name\|CPU(s):" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 4. System Uptime (Kab se server on hai)
echo "--- System Uptime ---" >> $OUTPUT_FILE
uptime -p >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 5. Disk Usage (Root Partition)
echo "--- Disk Usage ---" >> $OUTPUT_FILE
df -h / >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 6. Memory Usage
echo "--- Memory Usage ---" >> $OUTPUT_FILE
free -m >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# 7. Count files in the current directory (Basic piping practice!)
echo "--- Total Files in Current Directory ---" >> $OUTPUT_FILE
ls -l | wc -l >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Report generated successfully with more basic commands!"
