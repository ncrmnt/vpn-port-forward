#!/bin/sh

printf "$VPN_PASSWORD\n$VPN_PIN\n" | \
openconnect --useragent=AnyConnect --user=$VPN_USSER --passwd-on-stdin $VPN_HOST