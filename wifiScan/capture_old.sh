#!/bin/bash

#capture mac addresses by tshark
echo "start capturing"
while true; do  sudo  tshark -i mon0 -n -c 10  -f 'broadcast' -T fields -e frame.time_epoch  -e wlan.sa  -e  wlan_mgt.ssid    -e  radiotap.channel.freq    -e radiotap.dbm_antsignal    -e wlan.fc.type;   sleep 1;  done  

