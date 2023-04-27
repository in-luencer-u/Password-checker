#!/bin/bash

set -e

# Install required dependencies

sudo apt-get update

sudo apt-get install -y openssl hashcat

# Download the password database (SecLists)

wget https://github.com/danielmiessler/SecLists/archive/master.zip

unzip master.zip

cd SecLists-master/Passwords/

# Optional: Extract rockyou.txt for faster password cracking

unzip -j rockyou.txt.zip -d rockyou/

echo "Setup complete. You can now use the password checker tool."

