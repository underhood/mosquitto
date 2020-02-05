#!/bin/sh

apt-get update -y || exit 1
apt-get install -y build-essential libssl-dev || exit 1

make -C /build/lib || exit 1

cd /build || exit 1
# shellcheck disable=SC2154
tar -cvzf "libmosquitto-${tag}-${arch}".tar.gz lib/libmosquitto.a lib/*.h || exit 1
