#!/bin/bash
docker build -t config_application .
docker run -d -p 8080:8080 config_application:latest

for i in {0..100}; do curl -X GET http://localhost:8080/check_status; echo ''; sleep 1s; done
