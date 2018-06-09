#!/bin/sh
prefix=$1
builddir=$MESON_BUILD_ROOT/findables
sourcedir=$MESON_SOURCE_ROOT/findables
set -e
test -e "$builddir/build.ninja" ||
    meson --prefix "$prefix" "$builddir" "$sourcedir"
ninja -C "$builddir" install
