#!/bin/sh

export VERSION="snapshots"

export TARGET="brcm2708/bcm2711"
export PROFILE="rpi-4"

# Amazon basics USB ethernet adapter
export PACKAGES="${PACKAGES} kmod-usb-net-asix-ax88179"
