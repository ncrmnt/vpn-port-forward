FROM alpine:latest

RUN apk add --no-cache openconnect bind-tools iptables
COPY scripts/ /
ENTRYPOINT ["/docker-entrypoint.sh"]

# Fix Cannot open "/proc/sys/net/ipv4/route/flush": Read-only file system
# See https://serverfault.com/questions/878443/when-running-vpnc-in-docker-get-cannot-open-proc-sys-net-ipv4-route-flush 
RUN rm -f /etc/vpnc/vpnc-script \    
    && wget https://gitlab.com/openconnect/vpnc-scripts/-/raw/master/vpnc-script -O /etc/vpnc/vpnc-script \
    && chmod +x /etc/vpnc/vpnc-script

ARG TARGET_PORT
EXPOSE ${TARGET_PORT}
