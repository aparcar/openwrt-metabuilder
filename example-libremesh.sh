export VERSION="master"
export IB_VERSION="18.06.2"
export DISTRO="lime"
export TARGET="ar71xx/generic"
export PROFILE="tl-wdr4300-v1"
export PACKAGES="lime-system lime-proto-wan lime-hwd-openwrt-wan lime-debug smonit lime-proto-bmx7 bmx7-auto-gw-mode luci luci-app-bmx7 bmx7-topology bmx7-json"
export REPOS="""src/gz reboot_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/{{ subtarget }}/packages
src/gz reboot_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz reboot_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz reboot_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz reboot_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh http://snapshots.libremesh.org/packages/
src/gz lm_profiles http://chef.libremesh.org/network-profiles/"""

./meta image
