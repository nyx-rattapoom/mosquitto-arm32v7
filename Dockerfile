FROM arm32v7/alpine:3

RUN apk --no-cache add mosquitto mosquitto-clients tzdata

RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log /mosquitto/config/conf.d && \
    chown -R mosquitto:mosquitto /mosquitto

COPY config/mosquitto.conf /mosquitto/config

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
