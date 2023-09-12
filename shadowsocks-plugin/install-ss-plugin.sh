#!/bin/bash
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# / / Make Main Directory
mkdir -p /usr/local/bin/
mkdir -p /etc/shadowsocks
rm -rf /usr/bin/shadowhost
cd /usr/bin
wget -O addss-p "https://raw.githubusercontent.com/givps/autoset/master/shadowsocks-plugin/addss-p.sh"
chmod +x addss-p
wget -O delss "https://raw.githubusercontent.com/givps/autoset/master/shadowsocks/delss.sh"
cd
MYIP=$(wget -qO- ipinfo.io/ip);
clear
domain=$(cat /etc/xray/domain)
apt install iptables iptables-persistent -y
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
ntpdate pool.ntp.org
apt -y install chrony
timedatectl set-ntp true
systemctl enable chronyd && systemctl restart chronyd
systemctl enable chrony && systemctl restart chrony
timedatectl set-timezone Asia/Jakarta
chronyc sourcestats -v
chronyc tracking -v
date
# / / Unzip Shadowsocks plugin Linux arm64
rm -rf /usr/local/bin/v2ray-plugin
rm -rf /usr/local/bin/gost-plugin
rm -rf /usr/local/bin/xray-plugin
cd /usr/bin/
rm -rf xray-plugin
rm -rf v2xray-plugin
rm -rf gost-plugin
cd /usr/bin/
wget -O gost-plugin "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/gost-plugin"
wget -O v2ray-plugin "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/v2ray-plugin"
wget -O xray-plugin "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/xray-plugin"
chmod +x gost-plugin
chmod +x v2ray-plugin
chmod +x xray-plugin
# // download
cd /home/vps/public_html/
wget -O gost-plugin-arm.zip "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/gost-plugin-arm.zip"
wget -O gost-plugin-x86.zip "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/gost-plugin-x86.zip"
wget -O v2ray-plugin-universal.apk "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/v2ray-plugin-universal-v4.44.0.apk"
wget -O xray-plugin-universal.apk "https://raw.githubusercontent.com/fisabiliyusri/Shadowsocks-Plugin/main/xray-plugin-universal-v1.5.4.apk"

sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
