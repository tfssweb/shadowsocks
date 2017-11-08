#!/bin/bash

ssserver -c /etc/shadowsocks.json -d start

echo "服务已经启动！"

tail -f /var/log/shadowsocks.log