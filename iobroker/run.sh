#!/bin/bash

# Setze die Konfigurationen aus der config.yaml (über Umgebungsvariablen)
IOBROKER_PORT=${IOBROKER_PORT:-8081}  # Standardwert 8081, falls nicht gesetzt
MQTT_PORT=${MQTT_PORT:-1883}  # Standardwert 1883, falls nicht gesetzt

# Sicherstellen, dass das Verzeichnis /data/iobroker existiert
mkdir -p /data/iobroker

# Setzen des Arbeitsverzeichnisses auf /data/iobroker (sofern notwendig)
if [ ! -d "/opt/iobroker" ]; then
  ln -s /data/iobroker /opt/iobroker
fi

# Falls keine ioBroker-Instanz existiert, initialisieren
if [ ! -d "/data/iobroker/iobroker" ]; then
  echo "Erstelle ioBroker-Instanz..."
  # Hier könnte ein ioBroker Installationsbefehl stehen, falls dies notwendig ist
  # /usr/bin/node /opt/iobroker/install.js
fi

# Starte ioBroker
echo "Starte ioBroker..."
/usr/bin/node /opt/iobroker/node_modules/iobroker.js-controller/iobroker.js start
