# meta ImageBuilder

Instead of downloading (and updating) ImageBuilders manually, this script does
all the work. Automatically download ImageBuilder and create desired image.
Extra variables like `$PACKAGES` are forwarded to the ImageBuilder make call.

## Usage

Build `ar71xx/generic/tl-wr710n-v2.1` with latest (17.01.4) release:

    PROFILE="tl-wr710n-v2.1" TARGET="ar71xx" SUBTARGET="generic" ./meta

Build latest snapshot of the same target/profile combo (both work):

    PROFILE="tl-wr710n-v2.1" SNAPSHOTS=1 TARGET="ar71xx" SUBTARGET="generic" ./meta
    or
    PROFILE="tl-wr710n-v2.1" RELEASE=snapshots TARGET="ar71xx" SUBTARGET="generic" ./meta
