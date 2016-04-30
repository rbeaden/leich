#!/bin/bash

cat /proc/version
lsb_release -a
cat /etc/*-release | grep NAME


condition=$(cat /etc/*release | grep "Raspbian" | wc -l)
if [ -z $condition ] ; then
    echo "Test"
fi

condition=$(cat /etc/*release | grep "Ubunutu" | wc -l)
if [ -z $condition ] ; then
    echo "Test 2"
fi

