export VERSION="master"
export IB_VERSION="18.06.4"
export DISTRO="lime"
export TARGET="ar71xx/generic"
export PROFILE="tl-wdr3600-v1"
export PACKAGES="lime-system lime-proto-babeld lime-proto-batadv lime-proto-anygw lime-proto-wan lime-hwd-openwrt-wan shared-state hotplug-initd-services shared-state-babeld_hosts shared-state-bat_hosts shared-state-dnsmasq_hosts shared-state-dnsmasq_leases shared-state-nodes_and_links check-date-http lime-app lime-docs-minimal first-boot-wizard lime-map-agent lime-docs lime-hwd-ground-routing lime-debug ubus-lime-batman-adv ubus-lime-fbw pirania pirania-app shared-state-pirania shared-state-persist -dnsmasq -firewall -odhcpd-ipv6only -ppp"
export REPOS="""src/gz v18064_core http://downloads.openwrt.org/releases/{{ ib_version }}/targets/{{ target }}/packages
src/gz v18064_base http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/base
src/gz v18064_luci http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/luci
src/gz v18064_packages http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/packages
src/gz v18064_routing http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/routing
src/gz v18064_telephony http://downloads.openwrt.org/releases/{{ ib_version }}/packages/{{ pkg_arch }}/telephony
src imagebuilder file:packages
src/gz libremesh_master http://snapshots.libremesh.org/packages/
src/gz libremap http://downloads.libremesh.org/releases/18.06.1/packages/{{ pkg_arch }}/libremap/
src/gz lm_profiles http://chef.libremesh.org/network-profiles/"""

./meta image
