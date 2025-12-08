echo "=== Create a directory named project in the current user's home directory. ==="
cd $HOME
mkdir project
echo "===Create a file named report.txt inside the project directory==="
cd $HOME/project
touch report.txt
echo "===Set the permissions of report.txt to read and write for the owner, and read-only for the group and others.==="
cd $HOME/project
sudo chmod 644 report.txt
echo "===Set the permissions of the project directory to read, write, and execute for the owner, and read and execute for the group and others==="
sudo chmod 755 $HOME/project
echo "===Verify and display the permission changes.==="

ls -ld $HOME/project $HOME/project/report.txt