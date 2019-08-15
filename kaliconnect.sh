#!/bin/bash

#lists all interfaces
ip a
echo "what wireless interface do you want to use?"
echo "eg: wlan0"
read -p "interface: " interface
echo "setting up $interface"

#sets up desired interface
sudo ip link set $interface up

# scans for available networks
# iw $interface scan | less

# echo "what Network do you want to connect to? (case sensitive)"
# read -p "Network: " $network
# echo "please put your password below"

# puts credentials in file
# wpa_passphrase $network >> /etc/wpa_supplicant.conf

# connects to access point
# wpa_supplicant -B -i $interface -c /etc/wpa_supplicant.conf

# obtains ip address
# dhclient $interface

# clears screen
# clear
# echo "                                                                                          "
# echo "                                                                                          "
# echo "                         888888:                                                          "
# echo "                      ?88I    =888                                                        "
# echo "                      8 :888888+ 88                                                       "
# echo "                       O8+     88                                                         "
# echo "                         888O88                                                           "
# echo "                  888      88                                                             "
# echo "O88 8O8            88             88~ZD8                                             D    "
# echo " 8O8      O888     88     888    O7       O88D8   88D88Z  888888  :88888   78O888  O88888 "
# echo " 8  8Z   88 O8     88       8    O8       8    8   8  78   8   8  O8___88  8         8    "
# echo "888  88  88888O  888888  O88888   888888  88888   888 88  888 8O8  88888   O888D8    88888"

# shows info about your connected access point
# ip addr show $interface