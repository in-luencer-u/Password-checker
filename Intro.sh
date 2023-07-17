#!/bin/bash

echo "Welcome to the password checker tool!"
sleep 0.5
echo "This tool uses a database of commonly-used passwords to check if a password is secure or not."
sleep 0.5
echo "The database is downloaded from the SecLists project on Github, which contains a collection of password lists."
sleep 0.5
echo "The tool uses the hashcat password cracking utility to compare a password against the database and determine its strength."
echo ""
sleep 0.5
echo "The script will output whether the password is found in the database and how long it would take to crack."
echo ""
sleep 0.5
echo "The installation script will download the password database and install any required dependencies."
echo ""
sleep 0.5
echo "Thank you for using the password checker tool. Stay safe online!"

echo "TO CONTINUE TO TOOL, PRESS ANY KEY AND ENTER"
read s

toilet password checker

echo "What do you want to do?"
echo "1. Check password strength"
echo "2. Create a password"
echo "3. Create a password with your name"
echo "4. Check your password in rockyou text file"

read num

echo "Type the number of the option you want to choose:"

case $num in
  1)
    chmod +x Passcheck.sh
    ./Passcheck.sh
    ;;
  2)
    chmod +x Createpass.sh
    ./Createpass.sh
    ;;
  3)
    chmod +x Createpasswithname.sh
    ./Createpasswithname.sh
    ;;
  4)
    chmod +x Rockyou.sh
    ./Rockyou.sh
    ;;
  *)
    echo "Invalid option. Exiting..."
    ;;
esac
