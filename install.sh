#!/bin/sh

echo "Installing recordings-hashing..." && echo "- Installing recordings-hashing command in /usr/bin..."
sudo cp -f recordings-hashing /usr/bin
echo "- Turning recordings-hashing into an executable..."
sudo chmod +x /usr/bin/recordings-hashing
