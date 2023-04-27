#!/bin/bash

# Ask the user to enter a password

echo "Enter your password:"

read password

# Check the length of the password

if [ ${#password} -lt 8 ]; then

    echo "Your password is too short."

fi

# Check if the password contains special characters

if ! [[ "$password" =~ [^a-zA-Z0-9] ]]; then

    echo "Your password should contain special characters."

fi

# Check if the password contains digits

if ! [[ "$password" =~ [0-9] ]]; then

    echo "Your password should contain digits."

fi

# Check if the password contains uppercase letters

if ! [[ "$password" =~ [A-Z] ]]; then

    echo "Your password should contain uppercase letters."

fi

# Check if the password contains lowercase letters

if ! [[ "$password" =~ [a-z] ]]; then

    echo "Your password should contain lowercase letters."

fi

# Check if the password is strong enough

if [ ${#password} -ge 8 ] && [[ "$password" =~ [^a-zA-Z0-9] ]] && [[ "$password" =~ [0-9] ]] && [[ "$password" =~ [A-Z] ]] && [[ "$password" =~ [a-z] ]]; then

    echo "Your password is strong."

fi

