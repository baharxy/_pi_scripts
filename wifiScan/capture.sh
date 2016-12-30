#!/bin/bash

#capture mac addresses by tshark
echo "start capturing"

#while true; do sudo tshark -i mon0 -c 100 -f 'broadcast' -T fields -e frame.time_epoch  -e wlan.sa  -e  wlan_mgt.ssid    -e  radiotap.channel.freq    -e radiotap.dbm_antsignal    -e wlan.fc.type;   sleep 1;  done  

sudo tshark -i mon0   -f 'broadcast' -T fields -e frame.time_epoch  -e wlan.sa  -e  wlan_mgt.ssid    -e radiotap.dbm_antsignal    -e wlan.fc.type; 



while true; do sudo tshark -i mon0 -c 100 -f 'broadcast' -T fields -e frame.time_epoch  -e wlan.sa  -e  wlan_mgt.ssid    -e  radiotap.channel.freq    -e radiotap.dbm_antsignal    -e wlan.fc.type -e wlan.fc.type_subtype;   sleep 1;  done  

