#!/bin/bash
# cari apa tod
Exp2=$"Lifetime"
Name=$"givpn"
# Color Validation
green='\e[32m'
red='\e[31m'
yell='\e[33m'
Red='\e[1;31m'
Green='\e[1;32m'
Blue='\e[1;34m'
Purple='\e[1;35m'
NC='\e[0m'
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
# IP INFO
MYIP=$(curl -sS ifconfig.me)
LOC=$(curl -sS ifconfig.co/country)
#ISP=$(curl -s ipinfo.io/org?token=ce3da57536810d )
#CITY=$(curl -s ipinfo.io/city?token=ce3da57536810d )
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
# GETTING OS INFORMATION
source /etc/os-release
Tipe=$NAME
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
sldomain="$(cat /root/nsdomain)"
clear
echo -e ""
echo -e "$y-------------------------------------------------$wh"
echo -e "\e[1;34m            Sytem Information\e[0m"
echo -e "$y-------------------------------------------------$wh"
echo -e " \e[1;34mHostname    \e[0m: $HOSTNAME"
echo -e " \e[1;34mOS Name     \e[0m: $Tipe"
echo -e " \e[1;34mTotal RAM   \e[0m: ${totalram}MB"
echo -e " \e[1;34mPublic IP   \e[0m: $MYIP"
echo -e " \e[1;34mCountry     \e[0m: $LOC"
#echo -e " \e[1;34mProvider    \e[0m: $ISP"
#echo -e " \e[1;34mCity        \e[0m: $CITY"
echo -e " \e[1;34mDomain      \e[0m: $Domen"
echo -e " \e[1;34mName Server \e[0m: $sldomain"
echo -e "$y-------------------------------------------------$wh"
echo -e "\e[1;34m                MENU\e[0m"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  SSH & OpenVPN MENU$wh"
echo -e "$yy 2$y.  L2TP MENU$wh"
echo -e "$yy 3$y.  PPTP MENU$wh"
echo -e "$yy 4$y.  SSTP MENU$wh"
echo -e "$yy 5$y.  WIREGUARD MENU$wh"
echo -e "$yy 6$y.  SHADOWSOCKS MENU$wh"
echo -e "$yy 7$y.  SHADOWSOCKSR MENU$wh"
echo -e "$yy 8$y.  XRAY VMESS MENU$wh"
echo -e "$yy 9$y.  XRAY VLESS MENU$wh"
echo -e "$yy 10$y. XRAY TROJAN MENU$wh"
echo -e "$yy 11$y. TROJAN GO MENU$wh"
echo -e "$yy 12$y. XRAY GRPC MENU$wh"
echo -e "$yy 13$y. SLOWDNS MENU$wh"
echo -e "$yy 14$y. CHECK ALL IP PORT$wh"
echo -e "$yy 15$y. CHECK ALL SERVICE VPN$wh"
echo -e "$yy 16$y. UPDATE MENU (Update)$wh"
echo -e "$yy 17$y. sl-fix (Fix SSLH+WS-TLS Error after reboot)$wh"
echo -e "$yy 18$y. Settings$wh"
echo -e "$yy 19$y. Exit$wh"
#echo -e "$yy 20$y. Exit $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e " \e[1;34mClient Name \e[0m: $Name"
echo -e " \e[1;34mExpired     \e[0m: $Exp2"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yl            Telegram : t.me/givpn$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 20 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
exit
;;
*)
clear
menu
;;
esac
