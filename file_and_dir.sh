#!/bin/bash
# file_dir.sh
echo "=== Create a directory named linux_fundamentals in the current user's home directory ==="
cd $HOME
mkdir linux_fundamentals

echo "=== Inside linux_fundamentals, create a subdirectory named scripts ==="
cd $HOME/linux_fundamentals
mkdir scripts

echo "=== Create an empty file named example.txt inside the linux_fundamentals directory ==="
cd $HOME/linux_fundamentals
touch example.txt

echo "=== Copy example.txt to the scripts directory ==="
cp example.txt scripts/

echo "=== Move example.txt from linux_fundamentals to linux_fundamentals/backup ==="
mkdir backup
mv example.txt backup/

echo "=== Change the permissions of example.txt to read and write for all users ==="
cd $HOME/linux_fundamentals/backup
chmod 644 example.txt

echo "=== Verify the file permission and changes ==="
ls -l example.txt



