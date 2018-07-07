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
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list
    wget https://dl.google.com/linux/linux_signing_key.pub
    sudo apt-key add linux_signing_key.pub
    sudo apt update
    sudo apt install google-chrome-stable
    echo "installation complete"
fi

program="companion21"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo ./opentxin
    echo "installation complete"
fi

program="virtualbox"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    cd ~
    mkdir vboxinstall
    cd vboxinstall
    cp ~/leich/vboxinstall ~/vboxinstall/vboxinstall
    sudo ./vboxinstall
    echo "installation complete"
fi

cd ~/leich

program="vagrant"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo ./vagrantinstaller
    echo "installation complete"
fi


program="veracrypt"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo ./vercyptinstaller
    echo "installation complete"
fi

program="msfconsole"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    cd Metasploit
    sudo ./msfwebinstall
    cd ..
    echo "installation complete"
fi

program="dirb"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "$program is not installed"
    echo "installing $program"
    sudo apt install dirb
    echo "installation complete"
fi

cd ~
mkdir externalInstallers
cd externalInstallers

git clone https://github.com/Nyr/openvpn-install
git clone https://github.com/LionSec/katoolin

cd ~
mkdir hak5
cd hak5

git clone https://github.com/hak5/bashbunny-payloads
git clone https://github.com/hak5darren/USB-Rubber-Ducky

cd ~
git clone https://github.com/danielmiessler/SecLists
cd ~/leich

#wget https://github.com/betaflight/betaflight-configurator/releases/download/10.1.0/betaflight-configurator_10.1.0_amd64.deb
#sudo dpkg -i betaflight-configurator_10.1.0_amd64.deb
#(echo '# DFU (Internal bootloader for STM32 MCUs)';  echo 'ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE="0664", GROUP="plugdev"') | sudo tee /etc/udev/rules.d/45-stdfu-permissions.rules > /dev/null
#sudo usermod -G dialout -a leich
