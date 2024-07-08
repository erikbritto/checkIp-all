#!/usr/bin/bash
if [ "$#" != "1" ] || [ "$UID" != "0" ]
   then 
     echo "
It needs a destination IP address to show its tcp listening ports 

	Usage: sudo tcp-open.sh destinationIp 
	"
   exit -1
fi
nmap -sT -O $1 ##[ list open TCP ports ]##
