# checkIp-all.sh


chekIp-all.sh - To test all possible tcp connections from a source IP to a target port on destination IP.

	Usage: 
           sudo checkIP-all.sh sourceIP destinationIp targetPort


First Install nmap:
# sudo apt-get install nmap

Then
# $ git clone git@github.com:erikbritto/checkIp-all.git


Example 1: $ checkIp-all.sh 10.10.10.10 127.0.0.1 5001

Example 2: $ checkIp-all.sh 10.10.10.10 127.0.0.1 5001 > collected.txt
           To show only the open tcp ports
           $ cat collected.txt | show-open.sh

More

tcp-open-ports.sh - To show open tcp ports on a destination IP

	Usage:
           sudo tcp-open-ports.sh 127.0.0.1

udp-open-ports.sh - To show open udp ports on a destination IP

	Usage:
          sudo udp-open-ports.sh 127.0.0.1

