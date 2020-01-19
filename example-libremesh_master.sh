export VERSION="master"
export IB_VERSION="18.06.6"
export DISTRO="lime"
export TARGET="ar71xx/generic"
export PROFILE="tl-wdr3600-v1"
export PACKAGES="lime-system lime-proto-babeld lime-proto-batadv lime-proto-anygw lime-hwd-openwrt-wan shared-state-babeld_hosts shared-state-bat_hosts shared-state-nodes_and_links check-date-http lime-app lime-docs-minimal lime-docs lime-hwd-ground-routing lime-debug -dnsmasq -firewall -odhcpd-ipv6only -ppp"
export REPOS="""src/gz v18066_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/packages
src/gz v18066_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz v18066_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz v18066_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz v18066_routing http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/routing
src/gz v18066_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh_master http://snapshots.libremesh.org/packages/
src/gz libremap http://downloads.libremesh.org/releases/18.06.1/packages/{{ pkg_arch }}/libremap/
src/gz lm_profiles http://chef.libremesh.org/network-profiles/"""

./meta image
