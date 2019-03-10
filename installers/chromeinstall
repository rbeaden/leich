#!/bin/bash
CWD="$(pwd)" && echo CWD
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list
mkdir ~/chromeinstall
cd ~/chromeinstall
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt update
sudo apt install google-chrome-stable
cd CWD
