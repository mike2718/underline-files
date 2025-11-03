# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="/c/Users/Saori/build/git/bin-wrappers:$PATH"

export PS1='\[\e[38;5;66m\]\u\[\e[0m\]@\[\e[38;5;96m\]\h \[\e[38;5;65m\]\w \[\e[0m\](\[\e[38;5;178m\]$?\[\e[0m\]) \$ '

# tab自动完成文件名和命令
complete -cf sudo

# 用上下键历史记录自动完成
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
#export HISTIGNORE='history:pwd:ls:ls *:ll:w:top:df *'      # 保存しないコマンド
export PROMPT_COMMAND='history -a; history -c; history -r' # 履歴のリアルタイム反映

# Disable Ctrl+z in terminal
trap "" SIGTSTP

# Auto "cd" when entering just a path
shopt -s autocd

# Prevent overwrite of files
set -o noclobber

# Line wrap on window resize
shopt -s checkwinsize

# Shell exits even if ignoreeof set
export IGNOREEOF=100

#「Ctrl+S」を無効化する
if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

# 自用命令别名
alias c='clear'
alias s='sync'
alias e='exit'
alias a='awk'
alias g='grep'
alias rm='rm -f'
alias bc='bc -iq'
alias date='date +"%Y-%b-%d %T CST"'
alias astyle='astyle -A1 -p -s4 -xC80 -c'
alias pcc='pcc -Wall -Wpedantic -Wextra -std=c99'
alias gcc='gcc -Wall -Wpedantic -Wextra -std=c99'
alias clang='clang -Wall -Wpedantic -Wextra -std=c99'
alias L='|$PAGER'
alias N='>/dev/null 2>&1'
alias N1='>/dev/null'
alias N2='2>/dev/null'

# git快捷命令
alias gitsocks='git -c http.proxy=socks5://127.0.0.1:7890'
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit --gpg-sign=17C22010D29A50BC'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpl='git pull'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gs='git status'

# gpg
alias gpglk='gpg --list-keys --keyid-format=long'
alias gpglsk='gpg --list-secret-keys --keyid-format=long'
alias gpge='gpg --encrypt --recipient 82B1FC19E5C28E3D47A637DC1C12D567826B66F1'
alias gpgd='gpg --decrypt'

# gnupg tty
export GPG_TTY="$(tty)"
#export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
#gpgconf --launch gpg-agent

# curl的代理只用这些环境变量
#export http_proxy="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"
# 其他代理
#export https_proxy="http://127.0.0.1:7890"
#export HTTP_PROXY="${http_proxy}"

# zip默认压缩参数
export ZIPOPT='-9'

# rar默认压缩参数
#export RAR='-m5 -rr5 -s -md128 -ol'

# 自用别名
alias ls='ls -h -l --color=auto --time-style=+"%Y-%m-%d %H:%M"'
alias l='ls -CF --color=auto'
alias lh='ls -lh --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias l.='ls -d .* --color=auto'
alias dir='ls -ba'
alias cal='cal -S -m --color=auto'
alias grep='grep --color=auto -i'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff -rauN --color=auto'
# 使用单词级别比较的diff
#alias diff='git diff --no-index --color-words'
alias curl='curl --remove-on-error'

# 确保git显示英语消息
export LANG=en_US.UTF-8

umask 022


# vim: set et sw=4 sts=4 tw=80 ft=sh:
