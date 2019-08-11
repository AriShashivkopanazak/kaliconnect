#!/bin/bash
/sbin/iw dev
echo "what interface do you want to use?"
read 'interface: ' interface
echo "setting up $interface"
sudo ip link set $interface up
sudo /sbin/iw $interface scan | less
read 'Desired SSID: ' ssid
echo "please put your password below"
sudo wpa_passphrase $ssid >> /etc/wpa_supplicant.conf
sudo wpa_supplicant -B -i $interface -c /etc/wpa_supplicant.conf
/sbin/iw $interface link
sudo dhclient $interface
echo "test to see if it worked:"
echo "$ ping www.google.com"
