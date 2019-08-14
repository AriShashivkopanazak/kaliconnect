#!/bin/bash
ip a

echo "what wireless interface do you want to use?"
echo "eg: wlan0"
read -p "interface: " interface
echo "setting up $interface"
sudo ip link set $interface up
iw $interface scan | less
