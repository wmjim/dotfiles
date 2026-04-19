# development environment

## C/C++

```bash
# === ubuntu ===
# 核心编译工具链
sudo apt install gcc clang cmake make ninja-build ccache pkg-config
# 调试与分析工具
sudo apt install lldb valgrind strace ltrace cppcheck clang-tools
# perf-tools (Linux 性能工具)
sudo apt install linux-tools-common linux-tools-generic
# 包管理器
sudo apt install xmake 

# === macos ===
# 核心编译工具链
brew install gcc llvm cmake make ninja ccache pkg-config
# 调试与分析工具
brew install lldb llvm cppcheck
# 包管理器
brew install vcpkg xmake
```

## Node

```bash
# === ubuntu ===
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
sudo apt install -y nodejs
sudo corepack enable
npm install -g typescript-language-server @fsouza/prettierd

# === macos ===
brew install node@24 yarn pnpm
brew link node@24 --force 2>/dev/null || true
npm install -g typescript-language-server @fsouza/prettierd
```

## Python

```bash
# === ubuntu/macos ===
curl -LsSf https://astral.sh/uv/install.sh | sh

# 使用 uv 安装 Python 3.13
uv python install 3.13

# 使用 uv 安装工具（全局）
uv tool install black
uv tool install ruff
uv tool install mypy
uv tool install pylint
uv tool install bandit
uv tool install ipdb
uv tool install python-lsp-server
uv tool install tldr
```

## Rust

```bash
# === ubuntu/macos ===
# 1. 安装 rustup（Rust 官方工具链管理器）
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 2. 加载环境变量
# 3. 安装 stable 工具链
rustup default stable
# 4. 安装 rust lsp
rustup component add rust-analyzer
# 5. 安装 cargo 插件
cargo install cargo-edit cargo-watch cargo-audit cargo-outdated cargo-nextest cargo-cross
```
