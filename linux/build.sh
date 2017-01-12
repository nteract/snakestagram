conda create -p /tmp/snakestagram --copy -y -q python=3 pandas scikit-learn ipykernel

tar czf /tmp/snakestagram-v$VERSION-linux-x64.tar.gz /tmp/snakestagram
