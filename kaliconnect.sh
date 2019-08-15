# Author: Ari Shashivkopanazak
#!/bin/bash
ip a

echo "what wireless interface do you want to use?"
echo "eg: wlan0"
read -p "interface: " interface
echo "setting up $interface"
sudo ip link set $interface up
iw $interface scan | less



# #KaliConnect banner, comment out if you do not want
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


#Acknowledgements:
#Thank you developers of WPA_Supplicant!  Could not have done it without you guys.
#Finally, Thank you glassgiant.com for designing the banner!
