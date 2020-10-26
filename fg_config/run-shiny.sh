#!/bin/bash

echo "configuring session $1"
cp /etc/shiny-server/shiny-server.conf /tmp
sed -i -e "s/{sessionsId}/$1/g" /tmp/shiny-server.conf
cp /tmp/shiny-server.conf /etc/shiny-server/shiny-server.conf

echo "starting shiny-server"
/usr/bin/shiny-server
