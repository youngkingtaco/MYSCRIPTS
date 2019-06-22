#!/bin/bash

echo "insert the IP ADDRESS" IP

read -p IP 

ping -c 5 $IP

if [[ "${?}" -eq 0 ]] 
then 
   echo "$IP IS REACHABLE"
else 
   echo "$IP IS UNREACHABLE"
fi 

echo "do you want to use nslookup to query your dns?" 

echo "enter 1 to use nslookup"

if [[ "${?}" -eq 0 ]] 
then 
   echo "nslookup $IP "
 else 
   echo " i wont do anything about it"
 fi 


 
