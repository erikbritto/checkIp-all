#!/usr/bin/bash
if [ "$#" != "3" ] || [ "$UID" != "0" ]
   then 
     echo "
It needs an IP source address followed by a destination address and
target  port.
All source ports will be tested against the destination address
using the target Peort.

	Usage: sudo checkIP-all.sh sourceIP destinationIp targetPort
	"
   exit -1
fi
for N in {1..65535..1}
do
  # TCP  add --hide-sent
  nping --hide-sent --delay 1s --tcp-connect -c 1 --dest-port $N --source-ip $1 --dest-ip $2 -source-port $3
  # UDP 
  #nping --delay 1s --udp -c 1 --dest-port $N --source-ip $1 --dest-ip $2 --source-port $3
done
