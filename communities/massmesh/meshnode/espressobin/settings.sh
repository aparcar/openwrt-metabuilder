#!/bin/sh

set -x

export VERSION="snapshots"

export TARGET="mvebu/cortexa53"
export PROFILE="globalscale_espressobin"

export PACKAGES="${PACKAGES} -wpad-basic ath10k-firmware-qca988x-ct  batctl-full  cjdns  haveged iperf3 kmod-ath10k-ct  kmod-batman-adv  kmod-ipt-offload kmod-sched-act-vlan  luci  luci-app-cjdns mini_snmpd  nano swconfig tcpdump  wpad-mesh-openssl yggdrasil"

set +x
