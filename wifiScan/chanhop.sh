#!/bin/bash 
IFACE=mon0
<<<<<<< HEAD
#IEEE80211bg="1  6 11"
#IEEE80211bg_intl="$IEEE80211b 12 13 14"
#IEEE80211a="36 40 44 48 52 56"
#IEEE80211bga="$IEEE80211bg $IEEE80211a"
#IEEE80211bga_intl="$IEEE80211bg_intl $IEEE80211a"

# read frequency list from input 
echo 'is anything happening?'

arr=("$@")

echo ${arr[*]}

printf "%s\n" "${array[@]}" 

while true ; do
for CHAN in ${arr[*]} ; do
    echo "Switching to  frequency  $CHAN"
    sudo iw mon0  set freq  $CHAN
    #sleep only 1 sec
    sleep 1
=======
IEEE80211bg="1 2 3 4 5 6"
IEEE80211bg_intl="$IEEE80211b 12 13 14"
IEEE80211a="36 40 44 48 52 56 60 64 149 153 157 161"
IEEE80211bga="$IEEE80211bg $IEEE80211a"
IEEE80211bga_intl="$IEEE80211bg_intl $IEEE80211a"
while true ; do
for CHAN in $IEEE80211bga ; do
   echo "Switching to channel $CHAN"
    sudo iw mon0  set channel  $CHAN
   sleep 1
>>>>>>> 434300c5460113dc93384a4480a4b729ff39cd3d
 done
done
