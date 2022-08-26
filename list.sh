#!/bin/bash
# This script will create users with password authentication
# You need to be root to run this script
echo "Please enter preferred username"
read username
sudo adduser $username
echo "$username created successfully"
echo "Please enter your password"
read -s password
sudo passwd $username
echo "password created succesfully"
id $username
grep $username /etc/passwd
