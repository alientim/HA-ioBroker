#!/bin/bash

# Setze die Konfigurationen aus der config.json
IOBROKER_PORT=${IOBROKER_PORT:-8081}  # Standardwert 8081, falls nicht gesetzt
MQTT_PORT=${MQTT_PORT:-1883}  # Standardwert 18883, falls nicht gesetzt

# Starte den Docker-Container mit den konfigurierten Ports
docker run -d \
  -p ${IOBROKER_PORT}:8081 \
  -p ${MQTT_PORT}:1883 \
  --name iobroker \
  --restart unless-stopped \
  buanet/iobroker:v10.0.0
