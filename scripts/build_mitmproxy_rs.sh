# build mitmproxy_rs
# https://github.com/mitmproxy/mitmproxy_rs

source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq
apt install rust binutils protobuf -yq

# need maturin==0.14.17 for build
pip install cp311/maturin-0.14.17-cp311-cp311-linux_aarch64.whl

pip wheel mitmproxy_rs -v --no-build-isolation

mkdir -p cp311
mv *.whl cp311/