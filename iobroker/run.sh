IOBROKER_DIR="/addons_config/iobroker"

# Stelle sicher, dass das ioBroker-Verzeichnis existiert
if [ ! -d "$IOBROKER_DIR" ]; then
  echo "Erstelle ioBroker-Konfigurationsverzeichnis..."
  mkdir -p "$IOBROKER_DIR"
fi

# Starte ioBroker
exec node node_modules/iobroker.js-controller/controller.js --config "$IOBROKER_DIR"
