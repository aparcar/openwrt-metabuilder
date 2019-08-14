export VERSION="master"
export IB_VERSION="18.06.4"
export DISTRO="lime"
export TARGET="ar71xx/generic"
export SUBTARGET="generic"
export PROFILE="tl-wdr3600-v1"
export PACKAGES="check-date-http first-boot-wizard hotplug-initd-services lime-app lime-debug lime-hwd-ground-routing lime-hwd-openwrt-wan lime-proto-anygw lime-proto-babeld lime-proto-batadv lime-proto-wan lime-system shared-state shared-state-babeld_hosts shared-state-dnsmasq_hosts shared-state-bat_hosts shared-state-persist shared-state-dnsmasq_leases shared-state-pirania shared-state-nodes_and_links lime-docs lime-docs-minimal"
export REPOS="""src/gz v18064_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/packages
src/gz v18064_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz v18064_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz v18064_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz v18064_routing http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/routing
src/gz v18064_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh_master http://snapshots.libremesh.org/packages/
src/gz lm_profiles http://chef.libremesh.org/network-profiles/"""

./meta image
