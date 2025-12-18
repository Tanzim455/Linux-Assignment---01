#!/bin/bash
# user_mod.sh 

echo "=== Create original.txt in the home directory ==="
cd "$HOME"
if [ -f "original.txt" ]; then
    rm -f "original.txt"  
    
fi
touch "$HOME/original.txt"

 


echo "=== Create a symbolic link named softlink.txt pointing to original.txt. ==="
if [ -L "softlink.txt" ] || [ -f "softlink.txt" ]; then
    rm -f "softlink.txt"
   
fi

ln -s "$HOME/original.txt" softlink.txt


echo "=== Verify and display the symbolic link. ==="
ls -l softlink.txt



# echo "=== Delete the original file original.txt ==="
 cd "$HOME"

 #Safely remove the original file 
if [ -f "original.txt" ]; then
    rm -f "original.txt"
    echo "original.txt has been deleted."
else
    echo "original.txt does not exist (already deleted or missing)."
fi
echo 

 echo "=== Verify and display the status of the symbolic link ==="
# Show the symlink details

 ls -l softlink.txt


# Confirm the symlink still exists as a link (even if broken)
# if [ -L "softlink.txt" ]; then
    echo "softlink.txt is still a symbolic link."
    
    # Show where it points (will show the target path)
    readlink softlink.txt
    
    # Check if the link is now broken (target missing)
  if [ -L "softlink.txt" ]; then
    echo "softlink.txt is still a symbolic link."
    
    # Show where it points
    readlink softlink.txt
    
    # Check if the target exists (i.e., if the link is broken/dangling)
    if [ ! -e "softlink.txt" ]; then
        echo "Warning: The symbolic link softlink.txt is now DANGLING (broken) because the target original.txt no longer exists."
    fi
else
    echo "softlink.txt is no longer a symbolic link."
fi




 echo "=== Create a file named datafile.txt in the current user's home directory. ==="
 cd "$HOME"
 touch datafile.txt

 echo "=== Create a hard link named hardlink.txt pointing to datafile.txt. ==="
 cd "$HOME"
 if [ -f "hardlink.txt" ]; then
     rm -f "hardlink.txt"  
    
 fi

 ln datafile.txt hardlink.txt



echo "=== Display the inode of both datafile.txt and hardlink.txt ==="
# Show detailed listing – note that inode numbers will be THE SAME for both files
ls -li datafile.txt hardlink.txt

echo "===Delete the original file datafile.txt.==="
cd $HOME;
rm -f datafile.txt 

echo "===Verify and display the status of the hard link==="
ls -li datafile.txt hardlink.txt

echo "===Find all .txt file in users home directory==="
find . -type f -name "*.txt" > "$HOME/file_list.txt"




