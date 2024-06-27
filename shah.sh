#!/bin/bash

name=Shahzaib

echo "Name: $name"


# Number of running CPUs
echo "CPU: $(nproc --all)"

# RAM information
echo "RAM: $(free -h | awk '/Mem:/ {print $2}')"

# Total SSD storage
echo "Total SSD Storage: $(df -h --output=size -x tmpfs -x devtmpfs | awk 'NR>1 {sum += $1} END {print sum}')"


