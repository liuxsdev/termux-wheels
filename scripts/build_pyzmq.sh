apt update
DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade
apt install python -yq
apt install libzmq -yq
pip wheel pyzmq
mkdir -p cp311
mv *.whl cp311/
