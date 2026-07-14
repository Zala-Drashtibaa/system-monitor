#!/bin/bash

set -x

echo "=== SYSTEM HEALTH REPORT ===" > report.txt

echo "Date and Time:" >> report.txt
date

echo "" >> report.txt

echo "--- Disk Usage ---" >> report.txt

df -h / >> report.txt

echo "" >> report.txt

echo "--- Memory Usage ---" >> report.txt

free -h >> report.txt

echo "Report generated successfully!"
