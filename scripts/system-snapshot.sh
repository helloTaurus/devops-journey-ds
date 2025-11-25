#!/bin/bash

# This is called a 'shebang'. It tells the system to run this script with the Bash shell.

# Print a header
echo "=== SYSTEM SNAPSHOT ==="
echo "Generated on: $(date)"
# The $(date) is a 'command substitution'. It runs the `date` command and inserts the output here.

# Section 1: Current User and System
echo ""
echo "--- User & System Info ---"
whoami
# 'whoami' shows the current user
hostname
# 'hostname' shows the name of this machine

# Section 2: Disk Usage
echo ""
echo "--- Disk Space ---"
df -h
# 'df -h' shows disk free space in a human-readable format

# Section 3: Memory Usage
echo ""
echo "--- Memory Usage ---"
free -h
# 'free -h' shows memory usage in a human-readable format

# Section 4: Running Processes (top 5 by CPU)
echo ""
echo "--- Top 5 Processes by CPU ---"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
# This is a more complex command. It lists processes, sorts them by CPU usage, and takes only the top 5.

echo ""
echo "Snapshot complete."
