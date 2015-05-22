#!/bin/sh

# -y 参数表示不需要确认直接安装
cd ~
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install vim -y
sudo apt-get install emma -y
sudo apt-get install virtualbox -y
sudo apt-get install wireshark -y
sudo apt-get install wget -y
sudo apt-get install curl -y

#charles
sudo apt-get install tilda -y
sudo apt-get install ipython -y
sudo apt-get install uget aria2 -y
sudo apt-get install mplayer smplayer -y
sudo apt-get install gimp -y
sudo apt-get install fcitx -y

#音乐和歌词
sudo apt-get install exaile osd-lyrics -y
#音乐剪辑
sudo apt-get install audacity -y
#截图
sudo apt-get install shutter -y
#终端增强
#sudo apt-get install terminator -y

#chm阅读
sudo apt-get install kchmviewer -y
#sudo apt-get install chmsee

sudo apt-get install mysql-server -y
sudo apt-get install mongodb -y
