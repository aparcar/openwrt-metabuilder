#!/bin/sh

# Remove all forwardings (LAN -> WAN should be the only one by default)
uci show firewall | grep -o "firewall\.\@forwarding\[[0-9]\+\]" | uniq | xargs uci delete
uci commit

# Add yggdrasil peers
tmp=$(mktemp)
jq '.Peers += ["tcp://50.236.201.218:56088"]' /etc/yggdrasil.conf > "$tmp" && mv "$tmp" /etc/yggdrasil.conf
jq '.Peers += ["tcp://45.76.166.128:12345"]' /etc/yggdrasil.conf > "$tmp" && mv "$tmp" /etc/yggdrasil.conf
jq '.Peers += ["tcp://45.77.107.150:34660"]' /etc/yggdrasil.conf > "$tmp" && mv "$tmp" /etc/yggdrasil.conf
jq '.Peers += ["tcp://108.175.10.127:61216"]' /etc/yggdrasil.conf > "$tmp" && mv "$tmp" /etc/yggdrasil.conf
jq '.Peers += ["tcp://198.58.100.240:44478"]' /etc/yggdrasil.conf > "$tmp" && mv "$tmp" /etc/yggdrasil.conf
