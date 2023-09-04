#!/bin/sh
privoxy /etc/config/privoxy.conf
ss-local -s $SERVER_ADDR -p $SERVER_PORT -b 0.0.0.0 -l 10001 -k $PASSWORD -m $METHOD -t $TIMEOUT --plugin v2ray-plugin --plugin-opts "tls;host=$SERVER_ADDR;path=$SERVER_PATH"
