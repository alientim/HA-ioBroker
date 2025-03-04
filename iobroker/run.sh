#!/usr/bin/env bash
set -e

# Stelle sicher, dass die ioBroker-Daten vorhanden sind
if [ ! -d "/opt/iobroker" ]; then
  echo "Erstelle ioBroker-Verzeichnis..."
  mkdir -p /opt/iobroker
fi

# Starte ioBroker
exec node node_modules/iobroker.js-controller/controller.js
