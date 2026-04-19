# Git

## 安装

```bash
# ubuntu
sudo apt install git

# macos
brew install git
```

## 配置

```bash
# 1. 配置 name 和 email
git config --global user.name "meng.wang"
git config --global user.email "meng.w1016@outlook.com"
# 2. 配置默认编辑器
git config --global core.editor vim
# 3. 配置初始化分支名称
git config --global init.defaultBranch main
# 4. 生成 rsa 密钥
ssh-keygen -t rsa -C meng.w1016@outlook.com
# 5. 终端免密登录
cd ~/.ssh
cat id_rsa.pub >> authorized_keys
sudo chmod 600 authorized_keys
service sshd restart
```
