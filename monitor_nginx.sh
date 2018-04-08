#!/bin/bash
nginx_pro=`ps -C nginx --no-header | wc -l`
if [ $nginx_pro == 0 ];then
    nginx
    sleep 3
    nginx_pro2=`ps -C nginx --no-header | wc -l`
    if [ $nginx_pro2 == 0 ];then
        pkill keepalived  &>/dev/null
        exit 1
    else
        exit 0
else
    exit 0
fi
