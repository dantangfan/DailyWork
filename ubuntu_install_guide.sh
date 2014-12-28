#!/bin/sh

# -y 参数表示不需要确认直接安装
cd ~
sudo apt-get update

sudo apt-get install git -y
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
sudo apt-get install uget aria2 -y
sudo apt-get install mplayer smplayer -y
sudo apt-get install gimp -y
sudo apt-get install fcitx -y

#为知笔记
sudo add-apt-repository ppa:wiznote-team
sudo apt-get update
sudo apt-get install wiznote -y

#音乐和歌词
sudo apt-get install exaile osd-lyrics -y
#截图
sudo apt-get install shutter -y
#终端增强
#sudo apt-get install terminator
