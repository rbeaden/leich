#!/bin/bash

#cat /proc/version
#lsb_release -a
#echo "OS:"
#cat /etc/*-release | grep 'ID' | awk -F=  '{ print $2 }'| head -1
#echo "Version:"
#cat /etc/*-release | grep VERSION_CODENAME | cut -d "=" -f2

#echo "Staring test 1"

#osversion=Ubuntu

condition=$(cat /etc/*-release | grep 'ID' | awk -F=  '{ print $2 }'| head -1)
echo $condition
if [ "$condition" = "Ubuntu" ] ; then
  codename=$(cat /etc/*-release | grep 'VERSION_CODENAME' | cut -d "=" -f2)
  echo $codename
fi
#condition=$(cat /etc/*release | grep "Ubunutu" | wc -l)
#if [ -z $condition ] ; then
#    echo "Test 2"
#fi

#exit
