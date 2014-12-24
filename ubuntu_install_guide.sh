#!/bin/sh

cd ~
sudo apt-get update

sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install vim -y
sudo apt-get install emma -y
sudo apt-get install virtualbox -y
sudo apt-get install wireshark
sudo apt-get install wget -y
sudo apt-get install curl -y

#come across GWF
#edit /etc/proxychains.conf to add your proxy_ip and port
sudo apt-get install proxychains -y

#charles

sudo apt-get install tilda -y
sudo apt-get install ipython -y
sudo apt-get install uget -y
sudo apt-get install smplayer -y

