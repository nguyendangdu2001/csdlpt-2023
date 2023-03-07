#!/bin/bash
docker-compose up -d

sleep 5

docker exec rs00 /scripts/rs-init.sh