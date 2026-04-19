# 仅在交互式会话中启用后续设置
case $- in
  *i*) ;;
    *) return;;
esac

# oh-my-bash安装路径
export OSH='/home/mengw/.oh-my-bash'

# 主题
OSH_THEME="vscode"

# 智能补全（区分大小写）
OMB_CASE_SENSITIVE="true"

# 自动更新
DISABLE_AUTO_UPDATE="true"

# 自动更新频率/day
export UPDATE_OSH_DAYS=13

# 命令自动更正
ENABLE_CORRECTION="true"

# 等待完成时显示红点
COMPLETION_WAITING_DOTS="true"

# 完全忽略git仓库中未跟踪文件的存在
SCM_GIT_IGNORE_UNTRACKED="true"

# 历史命令回显时间戳样式
# [yyyy-mm-dd] + [time] with colors
HIST_STAMPS='[yyyy-mm-dd]'

# 自定义别名不会被覆盖
# OMB_DEFAULT_ALIASES="check"

# 允许 omb 调用 sudo
OMB_USE_SUDO=true

# 显示python虚拟环境和conda环境
OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable


# 自动补全功能（太多会拖慢shell启动速度）
# 自动补全文件：~/.oh-my-bash/completions/*
# 自定义自动补全文件：~/.oh-my-bash/custom/completions/
completions=(
  system          # 系统命令
  dirs            # 目录
  ssh             # ssh主机命令
  tmux            # tmux
  git             # git
  pip3            # pip3
  uv              # uv
  conda           # conda
  docker          # docker容器
  docker-compose  # docker编排
  npm             # npm
  nvm             # nvm
  makefile        # make命令
  # kubectl       # Kubernetes
  # helm          # k8s
  composer
)

# 别名（太多会拖慢shell启动速度）
# 别名文件：~/.oh-my-bash/aliases/*
# 自定义别名文件：~/.oh-my-bash/custom/aliases/
aliases=(
  general
  debian
  misc
  chmod
  docker
  cargo
  ls
)

# 插件（太多会拖慢shell启动速度）
# 插件文件：~/.oh-my-bash/plugins/*
# 自定义插件文件：~/.oh-my-bash/custom/plugins/
plugins=(
  git             # git 
  nvm             # nodejs版本管理器
  pyenv           # python版本管理器
  goenv           # go版本管理器
  cargo           # rust包管理器
  npm             # nodejs包管理器
  golang          # golang工具链
  chezmoi         # chezmoi点文件管理工具
  zoxide          # 更智能的cd
  fzf             # 模糊查找器     
  tmux            # tmux会话
  # 高亮man手册页
  colored-man-pages
  sudo            # 双击Esc，自动在当前命令前添加sudo
  progress        # 脚本可视化进度条
  starship        # 会覆盖 OSH_THEME
  # brew          # mac
)

# 有条件加载插件
# 只在GUI或SSH会话中启用 
#  if [ "$DISPLAY" ] || [ "$SSH_CONNECTION" ]; then
#      plugins+=(tmux-autoattach) # tmux会话中自动附加到已存在的会话
#  fi


source "$OSH"/oh-my-bash.sh

# 环境变量
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:~/.local/bin


# 语言环境
export LANG=en_US.UTF-8

# 本地和远程会话默认编辑器
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'    # 本地
# else
#   export EDITOR='mvim'   # 远程
# fi

# 编译flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# 别名：命令 alias，可查看别名列表
# alias bashconfig="mate ~/.bashrc"

