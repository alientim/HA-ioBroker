ARG BUILD_FROM=homeassistant/amd64-addon-base:latest
FROM ${BUILD_FROM}

RUN apk add --no-cache docker-cli

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
