#!/usr/bin/env bash

set -x

export DISTRO="openwrt"
export VERSION="snapshots"
export TARGET="ar71xx/generic"
export PROFILE="tl-wdr3500-v1"
export PACKAGES="""
-wpad-basic
batctl-full
cjdns
kmod-batman-adv
kmod-sched-act-vlan
luci
luci-app-cjdns
wpad-mesh-openssl
yggdrasil"""

export EXTRA_IMAGE_NAME="mm-v2-rc1-wdr3500"
export FILES="$PWD/files"

set +x

./meta image
