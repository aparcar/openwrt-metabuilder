export VERSION="17.06"
export IB_VERSION="18.06.0-rc2"
export DISTRO="lime"
export TARGET="ar71xx"
export SUBTARGET="generic"
export PROFILE="tl-wdr4300-v1"
export PACKAGES="bmx7 lime-proto-bmx7 lime-system"
export REPOS="""src/gz reboot_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/{{ subtarget }}/packages
src/gz reboot_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz reboot_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz reboot_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz reboot_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh http://repo.libremesh.org/releases/{{ version }}/packages/{{ pkg_arch }}/libremesh
src/gz libremap http://repo.libremesh.org/releases/{{ version }}/packages/{{ pkg_arch }}/libremap
src/gz limeui http://repo.libremesh.org/releases/{{ version }}/packages/{{ pkg_arch }}/limeui
src/gz lm_routing http://repo.libremesh.org/releases/{{ version }}/packages/{{ pkg_arch }}/routing
src/gz lm_profiles http://repo.libremesh.org/network-profiles/"""

./meta $@
