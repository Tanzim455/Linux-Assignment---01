#!/bin/bash
# file_nav.sh

echo "=== Listing home directory (~) ==="
ls -la "$HOME" > "$HOME/home_list.txt"

echo "=== Listing /var/log contents ==="
cd /var/log && ls -la > "$HOME/var_log.txt"

echo "=== Path to bash executable ==="
which bash

echo "=== Current shell ==="
echo "$SHELL"

echo
echo "All tasks completed!"
echo "Files created:"
echo "  • $HOME/home_list.txt"
echo "  • $HOME/var_log.txt"