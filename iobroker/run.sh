#!/bin/bash
CONFIG_PATH=/data/options.json

PORT_ADMIN=$(jq --raw-output '.port_admin' $CONFIG_PATH)
PORT_MQTT=$(jq --raw-output '.port_mqtt' $CONFIG_PATH)

# Erstellen Sie das Verzeichnis für persistente Daten, falls es nicht existiert
mkdir -p /addon_configs/iobroker

/usr/bin/docker run -d \
  -v /addon_configs/iobroker:/opt/iobroker \
  -p $PORT_ADMIN:8081 \
  -p $PORT_MQTT:1883 \
  buanet/iobroker:v10.0.0
