#!/bin/bash

echo All Active UDP TCP Ports:
echo $slporttcp
echo $slportudp
echo 

ipv6aku=$(ip addr show eth0 | grep "inet6\b" | awk '{print $2}' | cut -d/ -f1)
ipv4aku=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
ipaku=$(wget -qO- ipecho.net/plain)
hostall=$(hostname --all-ip-addresses | awk '{print $0}')
host1=$(hostname --all-ip-addresses | awk '{print $1}')
host2=$(hostname --all-ip-addresses | awk '{print $2}')
host3=$(hostname --all-ip-addresses | awk '{print $2}')
host4=$(hostname --all-ip-addresses | awk '{print $2}')
ipcidr=$(ip -4 -o addr show eth0 | awk '{print $4}')
slporttcp=sudo lsof -nP -iTCP -sTCP:LISTEN
slportudp=sudo lsof -iUDP -P -n | egrep -v '(127|::1)'

echo 
echo Your internal IPv6 address is:
echo $ipv6aku
echo
echo Your internal/Private IPv4 address is:
echo $ipv4aku
echo
echo Your external/Public IPv4 address is:
echo $ipaku
echo
echo All Hosts are:
echo $host0
echo Host 1 is:
echo $host1
echo Host 2 is:
echo $host2
echo Host 3 is:
echo $host3
echo Host 4 is:
echo $host4
echo IP CIDR is:
echo $ipcidr
echo
