# Enterprise Infrastructure Monitoring with Zabbix

## 📌 Project Overview

Designed and deployed a centralized monitoring solution using **Zabbix** in a medium-sized enterprise environment.  
The goal was to improve visibility, availability, and performance monitoring across network devices, servers, and IP cameras.

---

## 🏢 Environment

- Zabbix Server (Central Monitoring System)
- Windows Servers
- Windows Workstations / PCs
- Routers (Multiple ISP Links)
- Managed Switches
- Unmanaged Switches
- Hikvision IP Cameras

---

## 🌐 Network Architecture

- Subnet A: `172.16.0.0/16` (Internal enterprise network)
- Subnet B: `192.168.x.x` (DHCP-based user network)
- Multiple internet router links for redundancy and connectivity
- Static IP configuration for servers and critical infrastructure
- DHCP for end-user devices (workstations and PCs)

---

## 📊 Monitoring Implementation

### 🔌 Network Devices (Routers & Switches)
- SNMP-based monitoring
- Interface status tracking (up/down)
- Bandwidth usage monitoring
- Device availability checks (ICMP ping)

---

### 💻 Windows Systems
- CPU utilization monitoring
- Memory usage tracking
- Disk space monitoring
- Windows service status monitoring

---

### 📷 IP Cameras (Hikvision)
- Network reachability monitoring
- Device availability (online/offline status)

---

## 🚨 Alerting & Notifications

- Host availability alerts (down/up detection)
- High resource usage alerts (CPU, RAM, Disk)
- Network outage notifications
- Early detection of device failures

---

## 🧠 Skills Demonstrated

- Zabbix Administration & Configuration
- SNMP Monitoring
- Windows Server Administration
- Network Infrastructure Monitoring
- Troubleshooting enterprise networks
- IT Operations & Monitoring Strategy

---

## 📌 Project Outcome

Improved visibility of the entire IT infrastructure by centralizing monitoring and enabling proactive detection of network and system issues.
