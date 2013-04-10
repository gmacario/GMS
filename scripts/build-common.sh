SCRIPTDIR=$(dirname "$0")
cd "$SCRIPTDIR/.."
export GMS_ROOT="$PWD"
export ROOTFS="$GMS_ROOT/rootfs"
mkdir -p "$ROOTFS"
export PKG_CONFIG_PATH="$ROOTFS/lib/pkgconfig:$ROOTFS/usr/lib/pkgconfig"
cd "$GMS_ROOT/$SRCDIR"