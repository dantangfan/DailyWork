#!/bin/sh

# -y 参数表示不需要确认直接安装
cd ~
apt-get update
apt-get upgrade -y

apt-get install uget aria2 -y
apt-get install mplayer smplayer -y
apt-get install gimp -y
# 截图
apt-get install shutter -y
# 终端增强
apt-get install terminator -y

############################ 简单开发装备 ######################################
apt-get install git -y
apt-get install gcc -y
apt-get install g++ -y
apt-get install make -y
apt-get install vim -y
apt-get install virtualbox -y
apt-get install wget -y
apt-get install curl -y
apt-get install tilda -y
apt-get install python-dev -y
apt-get install ipython -y
apt-get install ruby-dev -y
apt-get install fcitx -y
apt-get install mysql-server -y
apt-get install redis-server -y
apt-get install mongodb -y
apt-get install nginx -y
apt-get install ctags -y
apt-get install ia32-libs -y
apt-get install golang-go -y
apt-get install zip unzip -y
apt-get install gawk -y
apt-get install mercurial -y
apt-get install subversion gettext libssl-dev -y
apt-get install g++-multilib gperf python-networkx bison build-essential flex gnupg libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop libwxgtk3.0-dev openjdk-8-jdk openjdk-8-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline6-dev -y
# rabbitmq 和 elixir 还是手动安装为好

############################ 工具箱 ###################################
apt-get install wireshark -y

#Lantern
wget https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-beta-64-bit.deb
dpkg -i lantern-installer-beta-64-bit.deb
rm lantern-installer-beta-64-bit.deb

#Shadowsocks proxychains
apt-get install shadowsocks proxychains -y

#sshuttle
apt-get install sshuttle -y

#zsh&oh-my-zsh @redrain_you_jie_cao
apt-get install zsh git -y
git clone git://github.com/robbyrussell/oh-my-zsh.git /etc/skel/.oh-my-zsh
cp /etc/skel/.oh-my-zsh/templates/zshrc.zsh-template /etc/skel/.zshrc



#Whois
apt-get install whois -y

# 文件恢复
#foremost 
apt-get install foremost -y
#extundelete
apt-get install extundelete -y

#zenmap zamp with gui
apt-get install zenmap -y

#masscan @sharecast 据说比nmap快10倍
apt-get install git gcc make libpcap-dev -y
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make
make install
cd ..
rm -rf masscan
cd /root


#httrack 整站下载
apt-get install httrack -y

#dsniff - dnsspoof dns欺骗
apt-get install dsniff -y

#tcpreplay tcp重放
apt-get install tcpreplay -y

#sslsplit 嗅探，实现中间人攻击
apt-get install sslsplit -y
#sslstrip
apt-get install sslstrip -y

#medusa 密码破解
apt-get install medusa -y

#radare2 逆向工具
apt-get install radare2 -y

#Aircrack-ng wifi破解利器
apt-get install libssl-dev -y
apt-get install git libsqlite3-dev libnl-3-dev libnl-genl-3-dev -y
git clone https://github.com/aircrack-ng/aircrack-ng
cd aircrack-ng
make
make strip
make install
cd /root
rm -rf aircrack-ng

#Wifite
apt-get install git tshark pyrit -y
mkdir -p /opt/woobuntu/wifite
cd /opt/woobuntu/wifite
wget https://raw.github.com/derv82/wifite/master/wifite.py
chmod +x wifite.py
sed -r 's/\/usr\/share\/wfuzz\/wordlist\/fuzzdb\/wordlists-user-passwd\/passwds\/phpbb.txt/\/opt\/woobuntu\/dict\/10_million_password_list_top_100000.txt/' wifite.py -i
cd /usr/bin
ln -s /opt/woobuntu/wifite/wifite.py wifite
cd /root
cat > /usr/share/applications/wifite.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=wifite
Icon=application-default-icon
Exec=$terminalcmd -e 'sh -c "gksudo airmon-ng check kill;sudo wifite --aircrack;exec bash"'
NoDisplay=false
Categories=woobuntu_network;
StartupNotify=true
Terminal=false
EOF

#mana-toolkit wifi 劫持
mkdir -p /opt/woobuntu
cd /opt/woobuntu
apt-get install libnl-3-dev libssl-dev python-dnspython python-pcapy dsniff stunnel4 -y
git clone --depth 1 https://github.com/sensepost/mana
cd mana
git submodule init
git submodule update
make
make install
cd /root
#SecList
mkdir -p /opt/woobuntu/dict
cd /opt/woobuntu/dict
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_100.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_500.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_1000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_10000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_100000.txt
cd /root

#Burp 渗透
apt-get install default-jre -y
mkdir -p /opt/woobuntu/burp
cd /opt/woobuntu/burp
wget https://portswigger.net/DownloadUpdate.ashx?Product=Free --content-disposition 
ln -s *.jar burp.jar
cd /root
cat > /usr/share/applications/burp.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=burp
Icon=application-default-icon
Exec=java -jar /opt/woobuntu/burp/burp.jar
NoDisplay=false
Categories=woobuntu_web;
StartupNotify=true
Terminal=false
EOF

#jd-gui 反编译
wget https://github.com/java-decompiler/jd-gui/releases/download/v1.4.0/jd-gui_1.4.0-0_all.deb
dpkg -i jd-gui_1.4.0-0_all.deb
rm jd-gui_1.4.0-0_all.deb

#sqlmap
apt-get install git -y
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/sqlmapproject/sqlmap
cd /usr/bin
ln -s /opt/woobuntu/sqlmap/sqlmap.py sqlmap
cd /root

#Metasploit-framework
apt-get install git ruby ruby-dev nmap git-core curl zlib1g-dev build-essential libpq5 libpq-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev libpcap-dev autoconf libgmp-dev -y
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/rapid7/metasploit-framework
ruby_verison=`cat /opt/woobuntu/metasploit-framework/.ruby-version`
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=$ruby_verison
source /usr/local/rvm/scripts/rvm
echo "source /etc/profile.d/rvm.sh" >> /root/.bashrc
echo "source /etc/profile.d/rvm.sh" >> /etc/skel/.bashrc
rvm install $ruby_verison
rvm use $ruby_verison --default
cd /opt/woobuntu/metasploit-framework
rvm --default use ruby-$ruby_verison@metasploit-framework
gem install bundler
bundle install
cd /root
for filename in $(ls /opt/woobuntu/metasploit-framework|grep msf)
do

cat > /usr/local/bin/$filename <<EOF
#!/bin/bash
source /etc/profile.d/rvm.sh
cd /opt/woobuntu/metasploit-framework
./$filename \$@
EOF
chmod a+x /usr/local/bin/$filename

done
cat > /usr/share/applications/msfconsole.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=metasploit
Icon=application-default-icon
Exec=$terminalcmd -e '/bin/bash -c "source /etc/profile.d/rvm.sh;cd /opt/woobuntu/metasploit-framework;./msfconsole; exec bash"'
NoDisplay=false
Categories=woobuntu_exploitation;
StartupNotify=true
Terminal=false
EOF

#Arachni web漏洞扫描
mkdir -p /opt/woobuntu
cd /opt/woobuntu
wget https://github.com/Arachni/arachni/releases/download/v1.4/arachni-1.4-0.5.10-linux-x86_64.tar.gz
tar -zxvf arachni-1.4-0.5.10-linux-x86_64.tar.gz
rm arachni-1.4-0.5.10-linux-x86_64.tar.gz
mv arachni* arachni
sed -r 's/(.*)"/\1:\/opt\/woobuntu\/arachni\/bin"/' /etc/environment -i
cd /root
cat > /usr/share/applications/arachni.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=arachni
Icon=application-default-icon
Exec=$terminalcmd -e '/bin/bash -c "gksudo /opt/woobuntu/arachni/bin/arachni_web; exec bash"'
NoDisplay=false
Categories=woobuntu_web;
StartupNotify=true
Terminal=false
EOF

#AntSword 中国蚁剑
mkdir -p /opt/woobuntu
cd /opt/woobuntu
wget https://github.com/antoor/antSword/releases/download/1.2.0/AntSword-v1.2.0-linux-x64.zip
unzip AntSword-v1.2.0-linux-x64.zip
rm AntSword-v1.2.0-linux-x64.zip
mv AntSword* AntSword
cd /root
cat > /usr/share/applications/antsword.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=antsword
Icon=application-default-icon
Exec=/opt/woobuntu/AntSword/AntSword
NoDisplay=false
Categories=woobuntu_web;
StartupNotify=false
Terminal=false
EOF

#golismero 自动化扫描
mkdir -p /opt/woobuntu
apt-get install python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan -y
cd /opt/woobuntu
git clone https://github.com/golismero/golismero.git
cd golismero
pip install -r requirements.txt
pip install -r requirements_unix.txt
chmod a+x golismero.py
cd /root
ln -s /opt/woobuntu/golismero/golismero.py /usr/bin/golismero

#beEF web 框架攻击平台
apt-get install ruby sqlite3 ruby-sqlite3 -y
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/beefproject/beef
ruby_verison=`cat /opt/woobuntu/beef/.ruby-version`
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=$ruby_verison
source /usr/local/rvm/scripts/rvm
echo "source /etc/profile.d/rvm.sh" >> /root/.bashrc
echo "source /etc/profile.d/rvm.sh" >> /etc/skel/.bashrc
rvm install $ruby_verison
rvm use $ruby_verison --default
cd /opt/woobuntu/beef
rvm --default use ruby-$ruby_verison@beef
gem install bundler
bundle install
cd /root
cat > /usr/share/applications/beef.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=beef
Icon=application-default-icon
Exec=$terminalcmd -e '/bin/bash -c "source /etc/profile.d/rvm.sh;cd /opt/woobuntu/beef;./beef; exec bash"'
NoDisplay=false
Categories=woobuntu_web;
StartupNotify=true
Terminal=false
EOF
chmod -R a+w /opt/woobuntu/beef

#wpscan wordpress 扫描工具
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev -y
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/wpscanteam/wpscan.git
chmod -R a+rw wpscan
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=2.2.4
source /usr/local/rvm/scripts/rvm
rvm install 2.2.4
rvm use 2.2.4 --default
cd /opt/woobuntu/wpscan
rvm --default use ruby-2.2.4@wpscan
gem install bundler
bundle install
cd /root

cat > /usr/bin/wpscan <<EOF
#!/bin/bash
source /etc/profile.d/rvm.sh
cd /opt/woobuntu/wpscan
./wpscan.rb \$@
EOF
chmod a+x /usr/bin/wpscan

#Weevely webshell 工具，仅限php
apt-get install python-dev python-dateutil python-pip -y
pip install prettytable Mako PyYAML PySocks
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/epinna/weevely3.git
ln -s /opt/woobuntu/weevely3/weevely.py /usr/bin/weevely
cd /root

#mitmproxy 中间人攻击
pip install mitmproxy

#BBScan @lijiejie
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/lijiejie/BBScan.git
chmod -R a+rw BBScan
cd BBScan
chmod a+x BBScan.py
pip install -r requirements.txt
cd /root
cat > /usr/bin/bbscan <<EOF
#!/bin/sh
cd /opt/woobuntu/BBScan
python BBScan.py \$@
EOF
chmod 777 /usr/bin/bbscan

#subDomainsBrute
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/dantangfan/subDomainsBrute.git
chmod -R a+rw subDomainsBrute
cd subDomainsBrute
chmod a+x subDomainsBrute.py
cd /root
cat > /usr/bin/subDomainsBrute <<EOF
#!/bin/sh
cd /opt/woobuntu/subDomainsBrute
python subDomainsBrute.py \$@
EOF
chmod 777 /usr/bin/subDomainsBrute

#dzscan @matt @ca1n Discus 扫描
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/code-scan/dzscan.git
cd dzscan
chmod a+x dzscan.py
cd /usr/bin
ln -s /opt/woobuntu/dzscan/dzscan.py dzscan
cd /root

#drozer 安卓审计与攻击
wget https://www.mwrinfosecurity.com/system/assets/931/original/drozer_2.3.4.deb
dpkg -i drozer_2.3.4.deb
apt-get -f install -y
rm drozer_2.3.4.deb

#dirs3arch http(S)网站目录爆破
mkdir -p /opt/woobuntu
cd /opt/woobuntu
git clone https://github.com/maurosoria/dirs3arch.git
chmod -R a+rw dirs3arch
cd /root

#rainbowcrack md5 密码破解
mkdir -p /opt/woobuntu
cd /opt/woobuntu
wget http://project-rainbowcrack.com/rainbowcrack-1.6.1-linux64.zip
unzip rainbowcrack-1.6.1-linux64.zip
rm rainbowcrack-1.6.1-linux64.zip
cd rainbowcrack-1.6.1-linux64
chmod a+x rt*
chmod a+x rcrack
cd /usr/bin
ln -s /opt/woobuntu/rainbowcrack-1.6.1-linux64/rcrack rcrack
ln -s /opt/woobuntu/rainbowcrack-1.6.1-linux64/rtgen rtgen
ln -s /opt/woobuntu/rainbowcrack-1.6.1-linux64/rtsort rtsort
ln -s /opt/woobuntu/rainbowcrack-1.6.1-linux64/rtc2rt rtc2rt
ln -s /opt/woobuntu/rainbowcrack-1.6.1-linux64/rt2rtc rc2rtc
cd /root

#bettercap 中间人攻击
gem install bettercap

#zed attack proxy 渗透测试、web
mkdir /opt/woobuntu
cd /opt/woobuntu
wget https://github.com/zaproxy/zaproxy/releases/download/2.4.3/ZAP_2.4.3_Linux.tar.gz
tar -zxvf ZAP_2.4.3_Linux.tar.gz
rm ZAP_2.4.3_Linux.tar.gz
cd /root
cat > /usr/share/applications/zap.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=ZAP
Icon=application-default-icon
Exec=/opt/woobuntu/ZAP_2.4.3/zap.sh
NoDisplay=false
Categories=woobuntu_web;
StartupNotify=true
Terminal=false
EOF

#thefuck
pip install thefuck
echo "eval \$(thefuck --alias)" >> /root/.bashrc
echo "eval \$(thefuck --alias)" >> /etc/skel/.bashrc

########################### 清场 ######################

apt-get clean
rm -rf /tmp/*
echo "" > /etc/hosts
cat > /etc/resolv.conf <<EOF
nameserver 8.8.8.8
nameserver 114.114.114.114
EOF
exit
