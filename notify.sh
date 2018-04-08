#!/bin/bash
nginx_pro=`ps -C nginx --no-header | wc -l`
if [ $nginx_pro == 0 ];then
    nginx
fi
