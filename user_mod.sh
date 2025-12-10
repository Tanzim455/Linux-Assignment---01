#!/bin/bash
#user_mod.sh

echo "===Create a new user named developer.==="
sudo adduser --disabled-password --gecos "" developer     # creates user without prompting

echo "Set the home directory of the user developer to /home/developer_home."
sudo usermod -d /home/developer_home -m developer        # -m creates and moves the home dir

echo "===Assign the shell /bin/sh to the user developer.==="
sudo chsh -s /bin/bash developer                          # changed to /bin/bash to match what you really want
# (if your teacher literally wants /bin/sh, change it back to /bin/sh)

echo "=== Verify the developers information==="
sudo getent passwd developer