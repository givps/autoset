# by givpn
# ipinfo
MYIP=$(wget -qO- ipinfo.io/ip);
# pewarna hidup
Bred="\e[1;31m"
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
NC='\e[0m'
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/givps/autoset/master/sshd_config;
systemctl restart sshd;
clear;
read -p "Enter Password : " pass
clear
if [[ ! -z "${pass}" ]]; then
echo ""
echo -e "\e[1;34m------------------------------------------\e[0m"
echo -e "\e[1;31m Please Save This VPS Account Information\e[0m"
echo -e "\e[1;34m------------------------------------------\e[0m"
echo -e "\e[1;32mIp address \e[0m = $MYIP"
echo -e "\e[1;32mPort SSH   \e[0m = 22 or 657"
echo -e "\e[1;32mUsername   \e[0m = root"
echo -e "\e[1;34m-------------------------------------------"
echo -e "\e[1;32m    Successfully enable root...!!!\e[0m"
echo -e "\e[1;34m-------------------------------------------"
echo ""
read -n 1 -s -r -p "Press any key to exit"
rm -rf rootvps.sh
exit
cd
fi
