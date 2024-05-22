#!/bin/bash
# Update and install MySQL
apt-get update
apt-get install -y mysql-server

# Start MySQL
systemctl start mysql
systemctl enable mysql

