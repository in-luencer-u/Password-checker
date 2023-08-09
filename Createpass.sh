#!/bin/bash

# Ask for the operating system
echo "Which operating system are you using?"
echo "1. Ubuntu/Debian"
echo "2. Red Hat/CentOS"
echo "3. Arch"
echo "4. Termux"

read os

# Install openssl based on the selected operating system
case $os in
  1)
    sudo apt update
    sudo apt install openssl
    ;;
  2)
    sudo dnf install openssl
    ;;
  3)
    sudo pacman -Sy openssl
    ;;
  4)
    pkg install openssl-tool
    ;;
  *)
    echo "Invalid choice. Exiting..."
    exit 1
    ;;
esac

# Generate a random password of length 16 using openssl
password=$(openssl rand -base64 30 | tr -dc '_A-Za-z0-9' | head -c30)
clear
echo "Your strong password is: $password"
echo "it have 30 charecters"
echo "you better save this password anywhere next time you come there will be a random password"
echo "after using it"
echo "be safe on internet"
