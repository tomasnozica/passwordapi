#!/bin/bash

sudo apt-get update

# Install Node
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install htop
sudo apt-get install -y htop
sudo apt-get install linux-tools-`uname -r`
    
# app installation
cd /opt
sudo git clone https://github.com/auth0-eng-camp/passwordapi.git
cd passwordapi
sudo npm install
sudo cp passwordapi.conf /etc/init
sudo service password start