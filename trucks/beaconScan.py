# test BLE Scanning software
# jcs 6/8/2014

import blescan
import sys,getopt
import bluetooth._bluetooth as bluez
import pdb

 
def scan(b_id):
	dev_id = 0
	try:
		sock = bluez.hci_open_dev(dev_id)
		print "ble thread started"

	except:
		print "error accessing bluetooth device..."
    		sys.exit(1)

	blescan.hci_le_set_scan_parameters(sock)
	blescan.hci_enable_le_scan(sock)
        
	while True:
		returnedList = blescan.parse_events(sock, 10)
                for beacon in returnedList:
             	    if b_id in beacon:
                	beacon_line=beacon.split(",")
		 	return [beacon_line[0],beacon_line[5]]
		                              
if __name__ =="__main__":
	try:
                opts, args=getopt.getopt(sys.argv[1:], "b:" , ["ibeacon_id="])
        except  getopt.GetoptError:
                        print 'beaconScan.py -b <ibeacon ID>'
                        sys.exit()
        for opt,arg in opts:
                if opt in ('-b', "ibeacon_id="):
                        ibeacon=arg
                        print 'ibeacon id is ', ibeacon
        
        [id,power]=scan(ibeacon)
        print (id , power)
