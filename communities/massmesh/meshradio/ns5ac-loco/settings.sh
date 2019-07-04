#!/bin/sh

set -x

export VERSION="snapshots"

export TARGET="ath79/generic"
export PROFILE="ubnt_nanostation-ac-loco"

export PACKAGES="-wpad-basic tcpdump batctl-full kmod-batman-adv ath10k-firmware-qca988x-ct kmod-ath10k-ct kmod-ipt-offload kmod-sched-act-vlan luci wpad-mesh-openssl"

set +x
