source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq

apt install rust binutils -yq

pip wheel maturin==0.14.17 -v

mkdir -p cp311
mv *.whl cp311/