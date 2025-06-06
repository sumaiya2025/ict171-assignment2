#!/bin/bash

# Linux System Maintenance and SSL Setup Script
# Created by Sumaiya Tabassum - ICT171 Assignment 2

echo "Welcome to Sumaiya's Linux Management Script"

# Step 1: Display Current Directory
echo "Current working directory:"
pwd

# Step 2: List Files and Folders
echo "Listing files and folders:"
ls

# Step 3: Create a new directory called newfiles
echo "Creating a new directory called newfiles"
mkdir -p ~/newfiles

# Step 4: Move into the newfiles directory
cd ~/newfiles
echo "Now inside newfiles directory:"
pwd

# Step 5: Create a new file called notes.txt
echo "Creating a file called notes.txt"
touch notes.txt

# Step 6: Write some text into notes.txt
echo "This is a Bash scripting exercise for ICT171 Assignment 2." > notes.txt

# Step 7: Display the content of notes.txt
echo "Contents of notes.txt:"
cat notes.txt

# Step 8: Copy notes.txt to backup_notes.txt
echo "Copying notes.txt to backup_notes.txt"
cp notes.txt backup_notes.txt

# Step 9: Rename backup_notes.txt to old_notes.txt
echo "Renaming backup_notes.txt to old_notes.txt"
mv backup_notes.txt old_notes.txt

# Step 10: Remove old_notes.txt
echo "Removing old_notes.txt"
rm old_notes.txt

# Step 11: Update system package list
echo "Running system update (apt update)"
sudo apt update

# Step 12: Upgrade all installed packages
echo "Running system upgrade (apt upgrade)"
sudo apt upgrade -y

# Step 13: Install Nginx
echo "Installing Nginx..."
sudo apt-get install nginx -y || { echo "Nginx installation failed"; exit 1; }
sudo systemctl start nginx
sudo systemctl enable nginx

# Step 14: Install Certbot and SSL Certificate (For securing the website)
echo "Installing Certbot and setting up SSL certificate..."
sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx -y

# Step 15: Show Disk Space Usage
echo "Disk space usage:"
df -h

# Step 16: Show Memory Usage
echo "Memory usage:"
free -h

echo "Script completed successfully!"
