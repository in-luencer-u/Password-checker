#!/bin/bash
clear
# Ask the user to enter a password

echo "Enter your password:"

read password

# Check the length of the password

if [ ${#password} -lt 8 ]; then

    echo "Your password is too short."

fi
sleep 1
# Check if the password contains special characters

if ! [[ "$password" =~ [^a-zA-Z0-9] ]]; then

    echo "Your password should contain special characters."

fi
sleep 1
# Check if the password contains digits

if ! [[ "$password" =~ [0-9] ]]; then

    echo "Your password should contain digits."

fi
sleep 1
# Check if the password contains uppercase letters

if ! [[ "$password" =~ [A-Z] ]]; then

    echo "Your password should contain uppercase letters."

fi
sleep 1
# Check if the password contains lowercase letters

if ! [[ "$password" =~ [a-z] ]]; then

    echo "Your password should contain lowercase letters."

fi
sleep 1
# Check if the password is strong enough

if [ ${#password} -ge 8 ] && [[ "$password" =~ [^a-zA-Z0-9] ]] && [[ "$password" =~ [0-9] ]] && [[ "$password" =~ [A-Z] ]] && [[ "$password" =~ [a-z] ]]; then

    echo "Your password is strong."
else  


	echo "try password maker" 
echo "do you want to craete one  "
echo "press 1 or 2"
echo "1.to create a strong password"
echo "2.to create a strong password with your name "
read a
case $a in
1)
    chmod +x Createpass.sh
    ./Createpass.sh
    ;;
  2)
    chmod +x Createpasswithname.sh
    ./Createpasswithname.sh
    ;;
  *)
    echo "Invalid option. Exiting..."
    ;;
esac

fi

 
