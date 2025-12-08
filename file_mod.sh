echo "=== Create a file named example.txt in the current user's home directory ==="
cd $HOME
touch example.txt
echo "===Create a new user without a home and shell named student.==="
sudo useradd -M -s /sbin/nologin student
echo "===Change the owner of example.txt to a user named student.==="
sudo chown student example.txt
echo "===Change the group of example.txt to a group named student.===="
sudo groupadd student
sudo chgrp student example.txt
echo "Verify and display the permission changes";
ls -l example.txt