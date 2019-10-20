#!/bin/sh

export VERSION="snapshots"

export TARGET="mvebu/cortexa53"
export PROFILE="globalscale_espressobin"

export PACKAGES=" ${PACKAGES} -wpad-basic ath10k-firmware-qca988x-ct"
export PACKAGES=" ${PACKAGES} batctl-full cjdns haveged kmod-ath10k-ct"
export PACKAGES=" ${PACKAGES} kmod-batman-adv kmod-ipt-offload kmod-sched-act-vlan"
export PACKAGES=" ${PACKAGES} luci-app-cjdns mini_snmpd alfred nodogsplash jq"
export PACKAGES=" ${PACKAGES} tcpdump wpad-mesh luci-proto-relay relayd"
export PACKAGES=" ${PACKAGES} dnscrypt-proxy dnscrypt-proxy-resolvers luci-app-dnscrypt-proxy"
export PACKAGES=" ${PACKAGES} ipset kmod-ipt-ipset kmod-usb-net-rndis"
export PACKAGES=" ${PACKAGES} tor-fw-helper socat kmod-ipt-nat6"
export PACKAGES=" ${PACKAGES} kmod-usb-net-rndis"
