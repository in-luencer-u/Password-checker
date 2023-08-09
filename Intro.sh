#!/bin/bash

echo "Welcome to the password checker tool!"
sleep 0.5
echo "This tool uses a database of commonly-used passwords to check if a password is secure or not."
sleep 0.5
echo ""
sleep 0.5
echo "The installation script will download  and install any required dependencies."
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
  *)
    echo "Invalid option. Exiting..."
    ;;
esac


