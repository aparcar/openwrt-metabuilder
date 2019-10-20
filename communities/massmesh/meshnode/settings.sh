#!/bin/sh

set -x

export EXTRA_IMAGE_NAME="massmesh-meshnode"

# Packages for all mesh nodes
export PACKAGES="${PACKAGES} yggdrasil luci luci-theme-material iperf3 nano"

set +x
