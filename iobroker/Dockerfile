FROM buanet/iobroker:latest

# Kopiere das Startskript
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Erstellen Sie die Verzeichnisse für persistente Daten
VOLUME ["/opt/iobroker"]

# Startbefehl
CMD ["/run.sh"]
