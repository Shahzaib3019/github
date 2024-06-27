
#!/bin/bash
 name=Shahzaib

echo "Name: $name"

# Display system name using an alternative method if hostname command is not available
if command -v hostname &> /dev/null
then
    echo "System Name: $(hostname)"
else
    echo "System Name: $(cat /etc/hostname)"
fi

# Number of running CPUs
echo "CPU: $(nproc --all)"

# RAM information
echo "RAM: $(free -h | awk '/Mem:/ {print $2}')"

# Total SSD storage
echo "Total SSD Storage: $(df -h --output=size -x tmpfs -x devtmpfs | awk 'NR>1 {sum += $1} END {print sum}')"


