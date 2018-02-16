#!/bin/bash

echo "Updating..."
sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get upgrade
echo "Update Complete" 

program="python3"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    sudo apt-get install python3
fi

program="nmap"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo apt-get install nmap
    echo "installation complete"
fi

program="pip"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo apt-get install python-setuptools python-pip
    echo "installation complete"
fi

program="git"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo apt-get install git
    sudo pip install github3.py
    echo "installation complete"
fi


program="chromium-browser"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo apt-get install chromium-browser
    echo "installation complete"
fi

program="google-chrome-stable"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | su$
    wget https://dl.google.com/linux/linux_signing_key.pub
    sudo apt-key add linux_signing_key.pub
    sudo apt update
    sudo apt install google-chrome-stable
    echo "installation complete"
fi

git clone https://github.com/rbeaden/bashbunny-payloads
git clone https://github.com/rbeaden/openvpn-install
git clone https://github.com/rbeaden/katoolin
git clone https://github.com/hak5darren/USB-Rubber-Ducky
