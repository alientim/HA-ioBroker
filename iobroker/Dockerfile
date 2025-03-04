FROM buanet/iobroker:v10.0.0

# Setze das Arbeitsverzeichnis auf das Home Assistant config-Verzeichnis
WORKDIR /opt/iobroker

# Stelle sicher, dass die Konfigurationsdaten erhalten bleiben
VOLUME ["/addons_config/iobroker"]

# Setze Standardports für ioBroker und einen optionalen MQTT-Port
EXPOSE 8081
EXPOSE 1883

# Führe ioBroker aus
CMD ["node", "node_modules/iobroker.js-controller/controller.js"]
