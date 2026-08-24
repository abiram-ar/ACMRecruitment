#!/bin/bash

DIR=$1

echo "Scanning directory: $DIR"
echo ""

echo "=== Files with 777 permissions ==="
find "$DIR" -perm 0777 

echo ""
echo "=== Files owned by root ==="
find "$DIR" -user root

echo ""
echo "=== Files with SUID bit set ==="
find "$DIR" -perm -4000

echo ""
echo "=== Total suspicious files ==="
find "$DIR" \( -perm 0777 -o -user root -o -perm -4000 \) | wc -l
