#!/bin/bash

ssserver -c /etc/shadowsocks.json -d restart

echo "服务已经重启！"

tail -f /var/log/shadowsocks.log
