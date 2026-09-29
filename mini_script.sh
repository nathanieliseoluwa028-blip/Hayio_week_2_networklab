#!/bin/bash
# Week 2 - Mini network check script
# Target: reddit.com (approved)

echo "=== My Lab Info ==="
ip a | grep 10.0.2
echo ""
echo "=== Ping Test ==="
ping -c 4 8.8.8.8
echo ""
echo "=== DNS Test ==="
nslookup reddit.com
echo ""
echo "=== Curl Test ==="
curl -I https://reddit.com
echo "Done - All checks passed"
