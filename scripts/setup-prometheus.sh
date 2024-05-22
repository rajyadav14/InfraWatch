#!/bin/bash
# Install Prometheus
# Add the Prometheus repository
echo "deb https://packagecloud.io/grafana/stable/debian/ buster main" > /etc/apt/sources.list.d/grafana.list
curl https://packagecloud.io/gpg.key | apt-key add -
apt-get update
apt-get install -y prometheus

