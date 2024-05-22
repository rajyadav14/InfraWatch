#!/bin/bash

# Log file
LOG_FILE="/tmp/setup-grafana.log"

# Function to log messages
log() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") $1" >> "$LOG_FILE"
}

# Install Grafana
log "Adding Grafana repository..."
echo "deb https://packagecloud.io/grafana/stable/debian/ buster main" > /etc/apt/sources.list.d/grafana.list
curl https://packagecloud.io/gpg.key | apt-key add - || { log "Failed to add GPG key."; exit 1; }
apt-get update >> "$LOG_FILE" 2>&1 || { log "Failed to update package repositories."; exit 1; }
log "Installing Grafana..."
apt-get install -y grafana >> "$LOG_FILE" 2>&1 || { log "Failed to install Grafana."; exit 1; }

log "Grafana installation completed successfully."

