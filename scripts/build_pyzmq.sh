source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq
apt install libzmq -yq
pip wheel pyzmq
mkdir -p cp311
mv *.whl cp311/
