#!/bin/bash

# Define CPU and Memory usage thresholds
CPU_THRESHOLD=80.0  # Stop if any process exceeds 80% CPU usage
MEM_THRESHOLD=70.0  # Stop if any process exceeds 70% memory usage

# Print current time and system uptime
echo "Current time: $(date '+%Y-%m-%d %H:%M:%S')"
echo "System uptime: $(uptime)"

# Display disk usage
echo "Disk usage:"
df -h --output=source,pcent | grep -v "Use%"

# Display available memory
echo "Free memory: $(free -m | awk 'NR==2 {print $4}') MB"

# Display system load average
echo "Load average: $(cat /proc/loadavg | awk '{print $1,$2,$3}')"

echo "-----------------------------------------------"

# Check for high CPU usage
HIGH_CPU_PROCESS=$(ps -eo pid,%cpu,cmd --sort=-%cpu | awk -v threshold="$CPU_THRESHOLD" '$2>threshold {print $1, $2, $3; exit}')
if [[ ! -z "$HIGH_CPU_PROCESS" ]]; then
  echo "❌ High CPU Usage Detected: $HIGH_CPU_PROCESS"
  echo "$(date) - High CPU Usage: $HIGH_CPU_PROCESS" >> high_usage_log.txt
fi

# Check for high memory usage
HIGH_MEM_PROCESS=$(ps -eo pid,%mem,cmd --sort=-%mem | awk -v threshold="$MEM_THRESHOLD" '$2>threshold {print $1, $2, $3; exit}')
if [[ ! -z "$HIGH_MEM_PROCESS" ]]; then
  echo "❌ High Memory Usage Detected: $HIGH_MEM_PROCESS"
  echo "$(date) - High Memory Usage: $HIGH_MEM_PROCESS" >> high_usage_log.txt
fi

echo "-----------------------------------------------"

# Exit the script after completing one run
exit 0

