#!/bin/bash

# Ask the user to enter a password

echo "Enter your password:"

read password

# Hash the password using SHA-256

password_hash=$(echo -n "$password" | sha256sum | cut -d ' ' -f 1)

# Check if the hashed password is present in the rockyou text file

if grep -q "^$password_hash" rockyou.txt; then

    echo "Your password has been found in the rockyou text file."

else

    echo "Your password is not found in the rockyou text file."

fi

