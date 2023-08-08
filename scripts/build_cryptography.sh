# build cryptography
# https://github.com/pyca/cryptography

source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq
apt install rust binutils -yq

pip wheel cryptography -v --no-deps

mkdir -p cp311
mv *.whl cp311/