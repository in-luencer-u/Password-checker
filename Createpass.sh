#!/bin/bash

# Generate a random password of length 16 using openssl

password=$(openssl rand -base64 12 | tr -dc '_A-Za-z0-9' | head -c16)

echo "Your strong password is: $password"

