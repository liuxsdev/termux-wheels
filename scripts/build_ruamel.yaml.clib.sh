# build ruamel.yaml.clib

source "$(dirname "${BASH_SOURCE[0]}")/upgrade.sh"

apt install python -yq


# 设置变量
package_name="ruamel.yaml.clib"
download_directory="build"

# 创建下载目录
mkdir -p "$download_directory"
# 使用pip下载源码包
pip download "$package_name" -d "$download_directory"
# 获取下载的tar.gz文件名
downloaded_file=$(find "$download_directory" -name "${package_name}*.tar.gz" | head -1)
# 解压下载的tar.gz文件
tar -xzvf "$downloaded_file" -C "$download_directory"
# 进入源码目录
extracted_folder=$(basename "$downloaded_file" .tar.gz)
cd "build/$extracted_folder"
# 下载 patch 文件
curl -o "patch-clang16" https://cgit.freebsd.org/ports/plain/devel/py-ruamel.yaml.clib/files/patch-clang16
# 应用 patch 文件
patch -p0 < patch-clang16
# 安装 build
pip install build
# build
python -m build .
# 复制文件
mkdir -p ~/cp311
cp dist/*.whl ~/cp311/