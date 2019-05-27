#!/bin/sh

set -x

export VERSION="snapshots"

export TARGET="ar71xx/generic"
export PROFILE="ubnt-unifiac-mesh"
export PACKAGES="""-wpad-basic \
tcpdump \
mini_snmpd \
batctl-full \
luci-app-cjdns \
cjdns \
kmod-batman-adv \
ath10k-firmware-qca988x-ct \
kmod-ath10k-ct \
kmod-ipt-offload \
kmod-sched-act-vlan \
luci \
wpad-mesh-openssl"""

set +x
