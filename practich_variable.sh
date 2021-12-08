#!/bin/bash
dockerstatus=$(systemctl status docker | awk '/Active/ {print$3}'| tr -d "[()]")
dockerversion=$(docker -v | awk '/version/ {print$3}' | tr -d ",")

echo "The docker status is: $dockerstatus"
echo "The docker version is: $dockerversion"
