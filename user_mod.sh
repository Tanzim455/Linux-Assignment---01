#!/bin/bash
#user_mod.sh

echo "===Create a new user named developer.==="
sudo groupdel developer 2>/dev/null   
sudo userdel developer 2>/dev/null
sudo adduser --disabled-password --gecos "" --ingroup users developer

echo "Set the home directory of the user developer to /home/developer_home."
if [ -d "/home/developer_home" ]; then
    echo "Directory /home/developer_home already exists, skipping creation."
    sudo usermod -d /home/developer_home developer
else
    echo "Directory /home/developer_home does not exist, creating and assigning..."
    sudo usermod -d /home/developer_home -m developer
fi   

echo "===Assign the shell /bin/bash to the user developer.==="
sudo chsh -s /bin/bash developer                        
echo "=== Verify and display the developer user's information.==="
sudo getent passwd developer

echo "===Change the username of the user developer to devuser.==="
sudo usermod -l devuser developer

echo "===Add the devuser to a group named devgroup.==="
sudo groupadd devgroup 2>/dev/null

sudo usermod -aG devgroup devuser

echo "===Set the password of the devuser to devpass.==="
echo "devuser:devpass" | sudo chpasswd

echo "Verify and display the changes made to the user."
echo "=== Final verification of user devuser ==="

getent passwd devuser

echo "--- Group membership ---"
sudo groups devuser

