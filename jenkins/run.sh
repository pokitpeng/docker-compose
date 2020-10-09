#!/usr/bin/env bash

[ -d /data/docker/jenkins ] && echo "dir exits" || mkdir -p /data/docker/jenkins
chown -R 1000:1000 /data/docker/jenkins 
docker-compose up -d