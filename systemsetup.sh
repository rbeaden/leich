#!/bin/bash

function menu {
echo "***************************************************************"
echo Installers:
echo "***************************************************************"
echo 1. Atom 2. Beta Flight Configurator 3. Chrome 4. Chromium
echo 5. Dirb 6. GIT 7. Monero Wallet 8. NMap 9. OpenTX 10. Python 3
echo 11. Python 3.7 12. Sublime Text 13. Terminator 14. Termite 15.
echo Vbox 16. Vagrant 17.  Vercrypt 18. WPS 19. Metasploit 0. EXIT
echo "***************************************************************"
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
