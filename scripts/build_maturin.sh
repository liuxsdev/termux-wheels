apt update
DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade
apt install python -yq

apt install rust binutils -yq

pip wheel maturin
mkdir -p cp311
mv *.whl cp311/