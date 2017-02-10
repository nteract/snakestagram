#!/usr/bin/env bash
set -ev

VERSION=${VERSION:-latest}
PLATFORM=${PLATFORM:-$(uname | awk '{print tolower($0)}')-x64}

rm -rf /tmp/snakestagram
conda create -p /tmp/snakestagram --copy -y -q python=3 pandas scikit-learn ipykernel

cd /tmp/
tar czf snakestagram-${VERSION}-${PLATFORM}.tar.gz ./snakestagram
du -hs snakestagram*
ls .
