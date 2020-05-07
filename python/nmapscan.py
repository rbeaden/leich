#!/usr/bin/env python3
import nmap # import nmap.py module
nm = nmap.PortScanner() # instantiate nmap.PortScanner object
nm.scan('127.0.0.1', '22-443') # scan host 127.0.0.1, ports from 22 to 443
nm.command_line() # get command line used for the scan : nmap -oX - -p 22-443 127.0.0.1
print(nm.scaninfo()) # get nmap scan informations {'tcp': {'services': '22-443', 'method': 'connect'}}

