# SSH

## 安装

```bash
# ubuntu
sudo apt install openssh-server
# macos
sudo brew install openssh
```

## 开启

```bash
sudo systemctl start sshd 	# 一次性启动（重启失效）
sudo systemctl enable sshd 	# 开机自启
```

## 配置

修改 `/etc/ssh/sshd_config`：

```
Port 22 			        # 修改默认端口（增强安全性）
PermitRootLogin yes 		# 允许 root 登录（推荐禁止）
PasswordAuthentication yes 	# 允许密码登录
# 每60秒向客户端发送一个保持活动的消息
ClientAliveInterval 60
# 服务器发送保持活动消息的最大次数（设置较大值接近"永不断开"）
ClientAliveCountMax 10000
```

### 熄屏不断开连接

如果安装的是 gnome 桌面，需要先执行：

```bash
# 禁止插电状态，自动挂起
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
# 禁用电池状态，自动挂起
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 0
```

然后修改 `/etc/systemd/logind.conf`：

```conf
# HandleSuspendKey=ignore               # 忽略挂起键
HandleLidSwitch=ignore				    # 忽略笔记本盖子的开关事件
HandleLidSwitchExternalPower=ignore		# 当连接外部电源时忽略盖子开关事件
# IdleAction=ignore						# 忽略系统空闲时的自动操作
```

最后重启服务：

```bash
sudo systemctl restart systemd-logind
```
