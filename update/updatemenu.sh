#!/bin/bash
# ==========================================
# Color
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
# hapus menu
rm -rf menu
rm -rf ipsaya
rm -rf sl-fix
rm -rf sshovpnmenu
rm -rf l2tpmenu
rm -rf pptpmenu
rm -rf sstpmenu
rm -rf wgmenu
rm -rf ssmenu
rm -rf ssrmenu
rm -rf vmessmenu
rm -rf vlessmenu
rm -rf grpcmenu
rm -rf grpcupdate
rm -rf trmenu
rm -rf trgomenu
rm -rf setmenu
rm -rf slowdnsmenu
rm -rf running

# download menu
cd /usr/bin
rm -rf menu
rm -rf menuinfo
rm -rf restart
rm -rf slhost
rm -rf install-sldns
rm -rf addssh
wget -O install-sldns "https://raw.githubusercontent.com/givpn/autoset/master/SLDNS/install-sldns"
wget -O restart "https://raw.githubusercontent.com/givpn/autoset/master/ssh/restart.sh"
wget -O m-tcp "https://raw.githubusercontent.com/givpn/autoset/master/update/m-tcp.sh"
wget -O m-dns "https://raw.githubusercontent.com/givpn/autoset/master/update/m-dns.sh"
wget -O addssh "https://raw.githubusercontent.com/givpn/autoset/master/ssh/addssh.sh"
wget -O menu "https://raw.githubusercontent.com/givpn/autoset/master/update/menu.sh"
wget -O ipsaya "https://raw.githubusercontent.com/givpn/autoset/master/update/ipsaya.sh"
wget -O sl-fix "https://raw.githubusercontent.com/givpn/autoset/master/sslh-fix/sl-fix"
wget -O sshovpnmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/sshovpn.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/l2tpmenu.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/pptpmenu.sh"
wget -O sstpmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/sstpmenu.sh"
wget -O wgmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/wgmenu.sh"
wget -O ssmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/ssmenu.sh"
wget -O ssrmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/ssrmenu.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/vlessmenu.sh"
wget -O xray-grpc "https://raw.githubusercontent.com/givpn/autoset/master/grpc/xray-grpc.sh"
wget -O grpcmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/grpcmenu.sh"
wget -O grpcupdate "https://raw.githubusercontent.com/givpn/autoset/master/update/grpcupdate.sh"
wget -O trmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/givpn/autoset/master/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/setmenu.sh"
wget -O slowdnsmenu "https://raw.githubusercontent.com/givpn/autoset/master/update/slowdnsmenu.sh"
wget -O running "https://raw.githubusercontent.com/givpn/autoset/master/update/running.sh"
wget -O updatemenu "https://raw.githubusercontent.com/givpn/autoset/master/update/updatemenu.sh"
wget -O slhost "https://raw.githubusercontent.com/givpn/autoset/master/ssh/slhost.sh"
#wget -O install-ss-plugin "https://raw.githubusercontent.com/givpn/autoset/master/shadowsocks-plugin/install-ss-plugin.sh"

#chmod +x install-ss-plugin
chmod +x xray-grpc
chmod +x install-sldns
chmod +x restart
chmod +x m-tcp
chmod +x m-dns
chmod +x addssh
chmod +x slhost
chmod +x menu
chmod +x ipsaya
chmod +x sl-fix
chmod +x sshovpnmenu
chmod +x l2tpmenu
chmod +x pptpmenu
chmod +x sstpmenu
chmod +x wgmenu
chmod +x ssmenu
chmod +x ssrmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x grpcmenu
chmod +x grpcupdate
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu
chmod +x slowdnsmenu
chmod +x running
chmod +x updatemenu
clear
echo -e "$y                   Update success..$wh"
sleep 2
cd
menu
