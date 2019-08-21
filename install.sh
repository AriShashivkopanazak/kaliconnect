#!/bin/bash
echo "welcome to kaliconnect!"
# moves script out of repo and removes repo
cd ..
mv ./kaliconnect/kaliconnect.sh ./kaliconnect.sh
rm -r ./kaliconnect
./kaliconnect.sh
