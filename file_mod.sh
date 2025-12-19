
#!/bin/bash
# file_mod.sh
echo "=== Create a file named example.txt in the current user's home directory ==="
cd $HOME
sudo touch example.txt
echo "===Create a new user without a home and shell named student.==="
if ! id -u student &>/dev/null; then
    sudo useradd -M -s /usr/sbin/nologin student
fi
echo "===Change the owner of example.txt to a user named student.==="
sudo chown student:student example.txt
echo "===Change the group of example.txt to a group named student.===="
if ! getent group student &>/dev/null; then
    sudo groupadd student
fi

sudo chgrp student example.txt
echo "Verify and display the permission changes";
ls -l example.txt