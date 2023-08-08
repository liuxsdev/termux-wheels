# build cryptography
# https://github.com/pyca/cryptography

source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq
atp install rust binutils -yq

pip wheel cryptography -v --no-deps