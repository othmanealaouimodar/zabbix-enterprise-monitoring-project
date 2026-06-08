#!/bin/bash
# Description: Sanitized installation steps for Zabbix Server, Frontend, and Agent
# OS: Ubuntu 22.04 LTS (Adapt for RHEL/AlmaLinux if needed)

echo "Starting Zabbix Server Deployment..."

# 1. Install Zabbix Repository
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
apt update

# 2. Install Zabbix Server, Web Frontend, and Agent
apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

# 3. Database Setup (MariaDB)
# Note: In production, passwords are kept in secure vaults.
mysql -uroot -p"YOUR_ROOT_PASSWORD" -e "create database zabbix character set utf8mb4 collate utf8mb4_bin;"
mysql -uroot -p"YOUR_ROOT_PASSWORD" -e "create user zabbix@localhost identified by 'YOUR_ZABBIX_PASSWORD';"
mysql -uroot -p"YOUR_ROOT_PASSWORD" -e "grant all privileges on zabbix.* to zabbix@localhost;"
mysql -uroot -p"YOUR_ROOT_PASSWORD" -e "set global log_bin_trust_function_creators = 1;"
# i can't show root password so i puted YOUR ROOT PASSWORD
# 4. Import initial schema and data
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p"YOUR_ZABBIX_PASSWORD" zabbix

# 5. Disable log_bin_trust_function_creators after import
mysql -uroot -p"YOUR_ROOT_PASSWORD" -e "set global log_bin_trust_function_creators = 0;"

# 6. Start and enable Zabbix services to run on boot
systemctl restart zabbix-server zabbix-agent apache2
systemctl enable zabbix-server zabbix-agent apache2

echo "Deployment complete. Proceed to web interface for final setup."
