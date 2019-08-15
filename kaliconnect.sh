#!/bin/bash
ip a

echo "what wireless interface do you want to use?"
echo "eg: wlan0"
read -p "interface: " interface
echo "setting up $interface"
sudo ip link set $interface up
iw $interface scan | less



#kali connect banner, comment out if you do not want

echo "                      888888:                                                   "
echo "                   ?88I    =888                                                 "
echo "                   8 :888888+ 88                                                "
echo "                    O8+     88                                                  "
echo "                      888O88                                                    "
echo "                888     88                                                      "
echo "O88 8O8          $8           88~ZD8                                      =D    "
echo " 8O8    DO888    $8    888   O7      O88D8  88D88Z 888888 :88888  78O888 O88888 "
echo " 8  8Z  888O8    $8      8   O$      8    8  8  78  8   8 O888888 8       =8    "
echo "888I 88 88888O 888888 O88888  888888 88888  888 88 888 8O8 888888 O888D8   88888"
