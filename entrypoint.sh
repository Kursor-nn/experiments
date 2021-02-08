#!/bin/bash
echo "Start project"
node server_dev.js &

echo "Wait 10s. Application is starting"
sleep 10s

echo "Configurate application"
curl -X GET http://localhost:8080/config

echo "Application is ready"
tail --pid 1 -f /dev/null