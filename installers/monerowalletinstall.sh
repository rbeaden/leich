#!/bin/bash

wget https://downloads.getmonero.org/linux64
tar jxvf linux64
cd monero-v0.13.0.4/
./monerod
./monero-wallet-cli
