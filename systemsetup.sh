#!/bin/bash

function menu {
echo 1. betaflightinstaller
echo 2. nmapinstall
echo 3. vboxinstall
echo 4. chromeinstall
echo 5. opentxin
echo 6. vercyptinstaller
echo 7. chromiuminstall
echo 8. python3install
echo 9. wpsinstall
echo 10. dirbinstall
echo 11. vagrantinstaller
echo 12. all
echo 0. Exit
echo Select option\:
read command
echo " "
choice
}

function choice {
if [ $command -eq 0 ] ; then
    echo "Exiting..."
    exit
elif [ $command -eq 2 ] ; then
    echo "Checking Nmap..."
    installed="$(./checkapp nmap)"
    echo ${installed}
    echo " "
    menu
elif [ $command -eq 3 ] ; then
    echo "Checking Vbox..."
    installed="$(. ./checkapp virtualbox)"
    echo ${installed}
    echo " "
    menu
elif [ $command -eq 99 ] ; then
    . ./printEcho
    echo " "
    menu
else
    echo "Command not found!"
    echo " "
    menu
fi
}

CWD="$(pwd)"
. ./printEcho
echo " "
menu
