#!/bin/bash

echo "======================================"
echo " LINUX SECURITY AUDIT"
echo "======================================"

echo ""
echo "[+] System Information"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "OS: $(sw_vers -productName) $(sw_vers -productVersion)"

echo ""
echo "[+] Current Network Connections"
netstat -an | head -20

echo ""
echo "[+] Listening Ports"
sudo lsof -i -P -n | grep LISTEN

echo ""
echo "[+] Logged-in Users"
who

echo ""
echo "[+] Disk Usage"
df -h

echo ""
echo "[+] Running Processes"
ps aux | head -15

echo ""
echo "======================================"
echo " AUDIT COMPLETE"
echo "======================================"

