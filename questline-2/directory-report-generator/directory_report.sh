#!/bin/bash

DIR=$1

echo "Directory report: $DIR" > report.txt
echo "Generated on : $(date)" >> report.txt
echo "" >> report.txt

total_files=$(find "$DIR" -type f  | wc -l)
echo "Total number of files: $total_files" >> report.txt

total_exec=$(find "$DIR" -type f -executable  | wc -l)
echo "Total number of executable files: $total_exec" >> report.txt

largest=$(find "$DIR" -type f -exec ls -s {} \; | sort -rn | head -1)
echo "Largest file: $largest" >> report.txt

recent=$(find "$DIR" -type f -printf '%T@ %p\n' | sort -rn | head -1| cut -d' ' -f2-)
echo "Most recently modified file: $recent" >> report.txt

hidden=$(find "$DIR" -type f -name ".*" | wc -l)
echo "Number of hidden files: $hidden" >> report.txt

echo "Report generated: report.txt"
