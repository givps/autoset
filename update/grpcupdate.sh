#!/bin/bash
# ==========================================
# ==========================================
# 
cd

cd /usr/bin

wget -O addgrpc "https://raw.githubusercontent.com/givpn/autoset/master/xray/addgrpc.sh"
wget -O cekgrpc "https://raw.githubusercontent.com/givpn/autoset/master/xray/cekgrpc.sh"
wget -O delgrpc "https://raw.githubusercontent.com/givpn/autoset/master/xray/delgrpc.sh"
wget -O renewgrpc "https://raw.githubusercontent.com/givpn/autoset/master/xray/renewgrpc.sh"


chmod +x addgrpc
chmod +x delgrpc
chmod +x cekgrpc
chmod +x renewgrpc

cd
