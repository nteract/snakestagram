#!/usr/bin/env bash
set -ev

conda create -p /tmp/snakestagram --copy -y -q python=3 pandas scikit-learn ipykernel

cd /tmp/
tar czf snakestagram-v${VERSION}-linux-x64.tar.gz ./snakestagram
ls .
