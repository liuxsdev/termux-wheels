# termux-wheels

使用 Github Action 和 [termux-docker](https://github.com/termux/termux-docker) 镜像编译常用的 Python Wheel 包

## maturin

需要 `rust` 编译器、`binutils`

> 网络原因导致编译很慢, rust 需换国内源: <https://mirrors.tuna.tsinghua.edu.cn/help/crates.io-index/>

```bash
apt install binutils rust
```

## pyzmq

需要 `libzmq`

```bash
apt install libzmq
```

---

## 相关链接

<https://github.com/termux/termux-packages>
