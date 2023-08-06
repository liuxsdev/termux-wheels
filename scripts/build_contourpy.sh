source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq

# build contourpy 
# https://github.com/contourpy/contourpy


# install build requires
apt install cmake ninja -yq
pip install meson meson-python pybind11
# install numpy dependencies
apt install python-numpy -yq
pip wheel contourpy -v --no-build-isolation --no-deps

mkdir -p cp311
mv *.whl cp311/