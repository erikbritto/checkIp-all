#!/usr/bin/bash
if [ "$#" != "1" ] || [ "$UID" != "0" ]
   then 
     echo "
It needs an IP address to show its udp listening ports 

	Usage: sudo udp-open.sh SourceIP
	"
   exit -1
fi
sudo nmap -sU -O $1
