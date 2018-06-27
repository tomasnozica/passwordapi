#!/bin/bash

set -e 

# Install prerequisites
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y build-essential

# Install Node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install htop
sudo apt-get install -y htop
sudo apt-get install -y linux-tools-`uname -r`
    
# app installation
cd /opt
sudo git clone https://github.com/auth0-eng-camp/passwordapi.git
cd passwordapi
sudo npm install
sudo cp passwordapi.conf /etc/init
sudo service passwordapi start