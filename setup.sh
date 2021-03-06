#!/bin/bash

if [[ $EUID -ne 0 ]]
then
	echo "This script must be run as root" 
	exit 1
fi

# Create backup directories
mkdir -p /data/database/postgres/bp
mkdir -p /data/database/grafana

# Assign correct owner to grafana
chown -R 472:472 /data/database/grafana
