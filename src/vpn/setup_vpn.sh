#!/bin/bash -x
# http://blog.fens.me/vpn-pptp-client-ubuntu/

serverip=54.178.183.214
uid=vpn
passwd=lzy20150101

sudo poff myvpn
sudo pptpsetup --create myvpn --server $serverip --username $uid --password $passwd --encrypt --start
sudo ip route del default
sudo ip route add default dev ppp0

