source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq
apt install rust -yq


pip install cp311/maturin-1.1.0-cp311-cp311-linux_aarch64.whl

# https://pip.pypa.io/en/stable/cli/pip_install/
pip wheel rpds-py -v --no-build-isolation

mkdir -p cp311
mv *.whl cp311/

