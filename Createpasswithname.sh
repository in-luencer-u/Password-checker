#!/bin/bash
clear
# Ask the user to enter their name

echo "Enter your name:"

read name

# Generate a random password of length 16 using openssl

password=$(echo -n "$name$(openssl rand -base64 12 | tr -dc '_A-Za-z0-9')" | sha256sum | cut -d ' ' -f 1 | cut -c1-16)
clear 
echo "Your strong password is: $password"

