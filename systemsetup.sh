#!/bin/bash

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
echo Select option\:

read command
echo $command

if [ $command -eq 0 ] ; then
    echo "$program is not installed"
else
    echo "$program is installed"
fi
