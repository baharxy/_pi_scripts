#!/bin/bash 
IFACE=mon0
#IEEE80211bg="1  6 11"
#IEEE80211bg_intl="$IEEE80211b 12 13 14"
#IEEE80211a="36 40 44 48 52 56"
#IEEE80211bga="$IEEE80211bg $IEEE80211a"
#IEEE80211bga_intl="$IEEE80211bg_intl $IEEE80211a"

# read frequency list from input 
# arr=("$@")
arr="2412 2437 2462 5180 5240 5260 5320 5745"

echo ${arr[*]}

printf "%s\n" "${array[@]}" 

while true ; do
for CHAN in ${arr[*]} ; do
    #echo "Switching to  frequency  $CHAN"
    sudo iw mon0  set freq  $CHAN
    #sleep only 1 sec
    sleep 1
 done
done
