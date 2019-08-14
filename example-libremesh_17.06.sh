export VERSION="17.06"
export IB_VERSION="17.01.6"
export DISTRO="lime"
export TARGET="ar71xx/generic"
export PROFILE="tl-wdr3600-v1"
export PACKAGES="lime-system lime-proto-wan lime-hwd-openwrt-wan lime-debug smonit lime-proto-bmx6 bmx6-auto-gw-mode luci lime-docs lime-docs-minimal luci-mod-admin-full lime-map-agent lime-proto-batadv lime-proto-anygw dnsmasq-lease-share dnsmasq-distributed-hosts lime-webui lime-hwd-ground-routing"
export REPOS="""src/gz reboot_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/packages
src/gz reboot_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz reboot_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz reboot_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz reboot_routing http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/routing
src/gz reboot_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh_v1706 http://downloads.libremesh.org/releases/{{ version }}/packages/{{ pkg_arch }}/libremesh/
src/gz lm_profiles http://chef.libremesh.org/network-profiles/"""

./meta image
