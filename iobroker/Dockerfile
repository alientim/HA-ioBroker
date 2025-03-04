FROM buanet/iobroker:v10.0.0

# Kopiere das Startskript
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Erstellen Sie die Verzeichnisse für persistente Daten
VOLUME ["/opt/iobroker"]

# Startbefehl
CMD ["/run.sh"]
