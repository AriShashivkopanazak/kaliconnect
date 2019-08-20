#!/bin/bash
# welcome to kaliconnect!
echo "installing"
# moves script out of repo and removes repo
cd ..
mv ./kaliconnect/kaliconnect.sh ./kaliconnect.sh
rmdir -f ./kaliconnect
./kaliconnect.sh
