FROM node:14

# Installiere ioBroker
RUN npm install -g iobroker --unsafe-perm

# Kopiere Konfigurationsdateien und setze das Arbeitsverzeichnis
COPY . /opt/iobroker

# Setze das Arbeitsverzeichnis
WORKDIR /opt/iobroker

# Exponiere Ports
EXPOSE 8081

# Starte ioBroker
CMD ["iobroker", "start"]
