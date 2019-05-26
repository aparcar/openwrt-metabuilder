#!/bin/sh

set -x

export VERSION="snapshots"

export TARGET="mvebu/cortexa53"
export PROFILE="globalscale_espressobin"

export PACKAGES="${PACKAGES} yggdrasil tcpdump swconfig kmod-ipt-offload kmod-sched-act-vlan luci"

set +x
