#!/bin/bash

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Download the compose file for the ELK stack
git clone https://github.com/zeta-o/docker-elk.git

# Build the ELK container with docker-compose
cd docker-elk

docker-compose up
