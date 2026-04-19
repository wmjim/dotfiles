### 创建配置仓库

创建一个用于存放配置文件的 Git 仓库：

```bash
mkdir ~/.dotfiles
cd ~/.dotfiles
git init
# 将 flk 配置文件创建链接
flk cr sm -r ~/.dotfiles/flk-store.json --fake ~/.config/flk/flk-store.json -d all

```

### 使用 flk 创建链接

```bash
# 为文件创建链接
flk cr sm -r ~/dotfiles/bash/.bashrc -f ~/.bashrc -d all
# 为目录创建链接
flk cr sm -r ~/dotfiles/git/.oh-my-bash -f ~/.oh-my-bash -d all
```

- `--real` (`-r`)：真实配置文件的存放位置（你 Git 仓库里的文件）
- `--fake` (`-f`)：软件默认读取配置的位置（要创建链接的位置）
- `--device` (`-d`)：给这个链接打上设备标签，方便多设备过滤
- `--force`：如果 `fake` 位置已有文件，强制删除后创建链接
- `--smart`：如果 `real` 不存在但 `fake` 存在，自动把 `fake` 复制到 `real`，再创建链接

### 在新设备上拉取并应用

```bash
# 1. 下载 flk
# 2. 克隆配置仓库
git clone https://github.com/wmjim/dotfiles.git
# 3. 执行修复，自动重建所有链接
flk fix --all
```
