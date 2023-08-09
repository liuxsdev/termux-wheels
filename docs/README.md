# termux-wheels

使用 Github Action 和 [termux-docker](https://github.com/termux/termux-docker) 镜像编译常用的 Python Wheel 包

## 编译 Packages

### cryptography

<https://github.com/pyca/cryptography>

需要 `rust` 编译器、`binutils`

```bash
apt install rust binutils -yq
```

```bash
pip install cryptography -v
```

> 从 41.0 版本开始, cryptography 取消了 Thin LTO 可正常 pip 安装  
> 由于 Rust Thin LTO 的不支持,需要设置`RUSTCFLAGS`来禁用 LTO[^1].  
> 对于以前的版本，使用`export RUSTFLAGS=" -C lto=no" && export CARGO_BUILD_TARGET="$(rustc -vV | sed -n 's|host: ||p')" && pip install cryptography`

### maturin

需要 `rust` 编译器、`binutils`

> 若网络原因导致编译很慢, 可换 rust crates 国内源: <https://mirrors.tuna.tsinghua.edu.cn/help/crates.io-index/>

```bash
apt install rust binutils -yq
```

```bash
pip install maturin -v
```

### pyzmq

需要 `libzmq`

```bash
apt install libzmq
```

> libzmq 库需要安装才能正常 import 使用

---

## 参考资料

[^1]: [[Bug]: Cant install cryptography for python #9982](https://github.com/termux/termux-packages/issues/9982#issuecomment-1283449362) 、 [[Bug]: cryptography won't install · Issue #12083 · termux/termux-packages (github.com)](https://github.com/termux/termux-packages/issues/12083)

## 相关链接

<https://github.com/termux/termux-packages>
