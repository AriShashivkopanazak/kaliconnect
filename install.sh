#!/bin/bash
# Do not run if you want to test
echo "welcome to kaliconnect!"
echo "this only works if you are root user :)"
mv kaliconnect.sh /root
cd ..
rm -r ./kaliconnect
cd /root
alias kalicon = "/root/kaliconnect.sh"
clear
echo "done! excecute "kalicon" as root user to initate kaliconnect"
