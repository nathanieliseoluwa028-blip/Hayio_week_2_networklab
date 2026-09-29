# Week 2 Network Analysis Report

**Student:** Nathaniel Iseoluwa
**Lab:** Kali VM NAT - 10.0.2.15
**Approved Target:** reddit.com:443

### 1. Lab Setup
- Host: My Laptop
- VM: Kali Linux, IP 10.0.2.15, Gateway 10.0.2.2, DNS 10.0.2.3
- Mode: NAT

### 2. Connectivity Tests
- ping 8.8.8.8 - SUCCESS (0% loss)
- ping reddit.com - SUCCESS
- nslookup reddit.com - Resolved to 151.101.x.x
- curl https://reddit.com - Got 200 OK

### 3. Wireshark Analysis
- DNS: VM sent query for reddit.com to 10.0.2.3, got answer
- TCP: 3-way handshake to reddit.com:443 (SYN, SYN-ACK, ACK)
- TLS: Client Hello, Server Hello - encrypted traffic observed
- No private data leaked, only lab IPs

### 4. Conclusion
Lab is working. All traffic goes through NAT gateway as expected. Evidence saved in repo.
