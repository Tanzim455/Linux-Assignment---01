#!/bin/bash
# file_nav.sh

echo "=== List all the contents of the current user's home directory, and save it in a file named home_list.txt. ==="
ls -la "$HOME" > "$HOME/home_list.txt"

echo "=== Change the current directory to /var/log, list its contents, and save it in a file named var_log.txt.==="
cd /var/log && ls -la > "$HOME/var_log.txt"

echo "=== Find and display the path to the bash executable using the which command. ==="
which bash

echo "=== Find and display the current shell ==="
echo "$SHELL"

