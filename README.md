# massmesh ./build usage

### Build a meshnode profile for espressobin
`./build massmesh meshnode globalscale_espressobin`

### Build a for a wireless meshradio for nanostation 
`./build massmesh meshradio ns5ac-loco`

### Examples
```
% ./build massmesh
Please specify a build profile:
- meshnode
- meshradio

% ./build massmesh meshradio
[./build] Please specify a device:
- ubnt_nanostation-ac-loco
- ubnt_unifiac-mesh

% ./build massmesh meshradio ubnt_unifiac-mesh
....building!

% ./build massmesh meshnode
[./build] Please specify a device:
- apu2
- globalscale_espressobin
- rpi-4

% ./build massmesh meshnode rpi-4
....building!

```

# meta ImageBuilder (Called by ./build)

Instead of downloading (and updating) ImageBuilders manually, this script does
all the work. Automatically download ImageBuilder and create desired image.
Extra variables like `$PACKAGES` are forwarded to the ImageBuilder make call.

## Usage

Build `ar71xx/generic/tl-wr710n-v2.1` with latest (17.01.4) release:

    PROFILE="tl-wr710n-v2.1" TARGET="ar71xx" SUBTARGET="generic" ./meta

Build latest snapshot of the same target/profile combo (both work):

    PROFILE="tl-wr710n-v2.1" RELEASE=snapshots TARGET="ar71xx" SUBTARGET="generic" ./meta

### Custom repositories

To support other distributions like LibreMesh which is based on OpenWrt but
which use additional repositories, it is possible to replace the
`repositories.conf` with a custom version.

You may setup extra repositories exporting the following variable:

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

The following variables are automatically replaced:

* `{{ version }}` Custom version
* `{{ ib_version }}` OpenWrt ImageBuilder version
* `{{ pkg_arch }}` Automatically determined package architecture
* `{{ target }}`
* `{{ subtarget }}`
