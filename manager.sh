#!/bin/bash
docker swarm leave --force

ip=$(ip -4 addr show | grep -oP '192\.168\.102\.\d+' | head -n1)

if [ -n "$ip" ]; then
    echo "Matched IP: $ip"
    docker swarm init --advertise-addr "$ip"
else
    echo "No IP matched 192.168.102.*"
    exit 1
fi
