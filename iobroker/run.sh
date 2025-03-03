#!/usr/bin/with-contenv sh
if [ ! -S /var/run/docker.sock ]; then
  echo "Docker-Socket nicht gefunden!"
  exit 1
fi

echo "Starte ioBroker-Container..."
docker run --rm --name iobroker -p 8081:8081 buanet/iobroker:latest
