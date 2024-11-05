#!/bin/sh

# Enable IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Add iptables rules for port forwarding
iptables -t nat -A PREROUTING -p tcp --dport 2222 -j DNAT --to-destination <destination-ip>:22
iptables -t nat -A POSTROUTING -j MASQUERADE

# Keep the container running
tail -f /dev/null

