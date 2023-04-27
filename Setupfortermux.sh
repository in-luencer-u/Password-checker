#!/bin/bash
set -e
# Install required dependencies

pkg update

pkg install -y openssl hashcat wget unzip

# Download the password database (SecLists)

wget https://github.com/danielmiessler/SecLists/archive/master.zip

unzip master.zip

cd SecLists-master/Passwords/

# Optional: Extract rockyou.txt for faster password cracking

unzip -j rockyou.txt.zip -d rockyou/

echo "Setup complete. You can now use the password checker tool."

