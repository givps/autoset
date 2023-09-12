#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Add Or Change Subdomain Host For VPS"
echo -e "$yy 2$y. Change Port Of Some Service"
echo -e "$yy 3$y. Limit Bandwith Speed Server"
echo -e "$yy 4$y. Check Usage of VPS Ram"
echo -e "$yy 5$y. Reboot VPS"
echo -e "$yy 6$y. Speedtest VPS"
echo -e "$yy 7$y. Displaying System Information"
echo -e "$yy 8$y. Info Script Auto Install"
echo -e "$yy 9$y. Install TCP BBR"
echo -e "$yy 10$y. DNS CHANGER"
echo -e "$yy 11$y. Menu"
echo -e "$yy 12$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
limitspeed
;;
4)
ram
;;
5)
reboot
/sbin/reboot
;;
6)
speedtest
;;
7)
info
;;
8)
about
;;
9)
clear
m-tcp
;;
10)
clear
m-dns
;;
11)
clear
menu
;;
12)
clear
exit
;;
*)
clear
menu
;;
esac
