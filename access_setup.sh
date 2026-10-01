#!/bin/bash
echo "Setting up role-based access control..."

echo "Creating users..."
sudo adduser --gecos "" devuser
sudo adduser --gecos "" opsadmin
sudo adduser --gecos "" auditor

echo "Granting opsadmin sudo access..."
sudo usermod -aG sudo opsadmin 

echo "Creating shared project folder..."
sudo mkdir -p /shared/project

echo "Creating auditors group..."
echo groupadd auditors
sudo usermod -aG auditors auditor

echo "Setting ownership and permissions..."
sudo chown devuser:auditors /shared/project
sudo chmod 750 /shared/project

echo "Access control setup complete!"
echo "devuser: read/write, auditors group:read-only, everyone else: no access"
