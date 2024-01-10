#!/bin/sh

main(){
    while [ -z "${IP}" ]; do
        echo Try to resolve $TARGET_HOST
        IP=`host $TARGET_HOST | awk '/has address/ { print $4 }'`
    done
    echo $TARGET_HOST has address $IP

    # Configeure port forwarding
    iptables -t nat -A PREROUTING -p tcp --dport $TARGET_PORT -j DNAT --to-destination $IP:$TARGET_PORT
    iptables -t nat -A POSTROUTING -j MASQUERADE 
    echo iptables configured: localhost:$TARGET_PORT - $IP:$TARGET_PORT
}

echo Start port forwarding
main &
