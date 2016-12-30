# pi_scripts
# server:
         shell script to emit ble beacon, we run this script only once and as long as the server pi is on the  emitter will transmit bleutooth beacons

# truck:
         beaconScan.py   scans for   bluetooth beacons  given an UUD ID as an input argument. The output is a list of heard bluetooth beacons and  their received power
         blescan.py is to be used in beaconScan.py
         manage_wifi.sh  uses beaconScan.py's output  to manage the  set the wifi interface up/down on the truck

