#!/bin/bash


#THIS WILL LET YOU INSERT THE PATH NAME FOR YOUR FORWARD LOOKUP ZONE

read -p "Hey this script will help you to automate your DNS record registration, Hope i was helpful"

# ENTER THE FLZ path name location

read -p "Enter your path name for your FLZ:" FLZ

# THIS SHOULD REDIRECT YOU TO RLZ
read -p "ENTER your path name for your RLZ:" RLZ

#INSERT YOUR DNS RECORD
echo "Enter the name of the server. example prod-dns-master".
read ServerName

echo "Enter the IP ADDRESS for the server"
read IPADDRESS

echo "Enter the last octet for your PTR records in your DNS"
read lastoctet

echo "ENTER SERVER'S FQDN."
read FQDN


echo "ENTER 1 FOR NAME SERVER."

echo "Enter 2 for MAILSERVER"

echo "ENTER 3 for any other server record."

read ServerTypes


case "$ServerTypes" in 


1)
echo -e "@ .   IN   NS   $FQDN" >> $FLZ
echo -e " $Server IN      A    $FQDN." >> $FLZ

echo -e "@        IN       NS     $FQDN"  >> $RLZ
echo -e  " $Server    IN     A     $IP  " >> $RLZ
echo -e "$last  IN       PTR      $FQDN " >> $RLZ


read -p "FORWARD AND REVERSE LOOKUP ZONES HAVE BEEN UPDATED WITH NEW INFORMATION"



2)

echo -e "@    IN   MX 10  $FQDN" >> $FLZ
echo -e " $Server IN      A    $FQDN." >> $FLZ


echo -e "$last  IN       PTR      $FQDN " >> $RLZ


read -p "FORWARD AND REVERSE LOOKUP ZONES HAVE BEEN UPDATED WITH NEW INFORMATION"

3)
echo -e " $Server IN      A    $IP" >> $FLZ



echo -e "$last  IN   PTR $FQDN" >> $RLZ
read -p "FORWARD AND REVERSE LOOKUP ZONES HAVE BEEN UPDATED WITH NEW INFORMATION"
;; 


*) echo -e "Enter 1 , 2 or 3."

echo -e "Thanks for using my script, BYE BYEE!! "

;; 

esac














