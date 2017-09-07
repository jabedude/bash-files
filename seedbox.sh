#!/bin/bash

## SEEDBOX SCRIPT ##

# Get updates
apt-get update && apt-get upgrade

# Get deluged + deluged console
apt-get install deluged
apt-get install deluge-console

# Start and kill deluged
deluged
pkill deluged

# Backup old  auth file
cp ~/.config/deluge/auth ~/.config/deluge/auth.old

# Put new username/password in config
echo "deluged:ubuntu:10" >> ~/.config/deluge/auth

# Start deluged again
deluged

## NOW YOU DO THIS:
#deluged-console
#config -s allow_remote True
#config allow_remote
#exit

# HUP deluged
pkill deluged
deluged

apt-get install openvpn
apt-get install zip
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip -O /etc/openvpn/openvpn.zip
unzip /etc/openvpn/openvpn.zip -d /etc/openvpn/
