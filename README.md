# shadowsocks client with v2ray-plugin and privoxy

容器化的shadowsocks客户端。

仅提供了基于v2ray的websocket这一种方式运行，并且内置了privoxy代理，同时支持http和socks5代理。

这里只提供Dockerfile，不包含image。

具体的shadowsocks+v2ray+websocket全套服务部署方式请自行搜索。

## 默认配置
http端口: 10000

socks5端口: 10001

## docker compose示例
```
version: '3'

services:
  ss-local:
    image: <your-ss-local-image-name>
    container_name: ss-local
    restart: always
    ports:
      - 10000:10000
      - 10001:10001
    environment:
      SERVER_ADDR: <your-server-domain>
      SERVER_PORT: <your-server-port (default 443)>
      PASSWORD: <your-password>
      SERVER_PATH: <your-serverv2ray-path (start with /)>      
```

## 引用
https://github.com/shadowsocks/shadowsocks-libev
https://github.com/shadowsocks/v2ray-plugin
https://www.privoxy.org/
