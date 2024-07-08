#!/usr/bin/bash
if [ "$#" != "1" ] || [ "$UID" != "0" ]
   then 
     echo "
It needs a destination IP address to show its udp listening ports 

	Usage: sudo udp-open.sh destinationIp 
	"
   exit -1
fi
sudo nmap -sU -O $1
