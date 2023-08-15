FROM shadowsocks/shadowsocks-libev:latest

USER root

RUN apk --update --upgrade add privoxy \
    && rm /var/cache/apk/* \
    && chown -R root:root /etc/privoxy

COPY --chmod=755 ./bin/* /usr/bin/
COPY ./config/* /etc/config/

ENV SERVER_PORT=443
ENV METHOD=chacha20-ietf-poly1305
ENV TIMEOUT=300
ENV SERVER_PATH=/

EXPOSE 10000
EXPOSE 10001

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD []