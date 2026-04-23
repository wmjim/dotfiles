if status is-interactive
    # Commands to run in interactive sessions can go here
end







# 别名
alias ".."="cd .."
alias "..."="cd ../.."
alias update="sudo apt update && sudo apt upgrade"

# batcat 推荐别名
alias bat="batcat --style=plain"
alias cat="batcat --style=plain --paging=never"

# eza 推荐别名
# 基础替换：带图标、目录优先、文件类型颜色
alias ls='eza --icons=auto --group-directories-first --color=auto'
# 详细列表 + Git 状态（最常用）
alias ll='eza -l --icons=auto --group-directories-first --git --header'
# 显示隐藏文件
alias la='eza -a --icons=auto --group-directories-first'
# 详细版显示隐藏文件
alias lla='eza -la --icons=auto --group-directories-first --git --header'
# 树形显示，限制 2 层，避免刷屏
alias lt='eza --tree --level=2 --icons=auto'
# 只看目录
alias ldir='eza -D --icons=auto'








# duf 推荐别名
alias df='duf --only local'           # 替代 df，只显示本地磁盘
alias duf='duf --sort usage'          # 默认按使用率排序（最满的在前）
alias dufall='duf --all'              # 查看所有（含伪文件系统）
alias dufjson='duf --json'            # JSON 输出，用于脚本


# 样式配置: starship
starship init fish | source
# 目录跳转
zoxide init fish | source
