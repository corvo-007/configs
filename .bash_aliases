# ls
alias l.='ls -d .* 2> /dev/null'
alias ll.='ls -ld .* 2> /dev/null'

# apt, snap
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias autoremove='sudo apt autoremove'
alias refresh='sudo snap refresh'
alias uur='sudo apt update && sudo apt upgrade -y && sudo snap refresh'

# git
alias gs='git status'
alias gp='git push'
alias gl='git pull'
alias gc='git commit -m'
alias ga='git add'
alias glg='git log'
alias gd='git diff'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# copy to clipboard
alias clip='xclip -selection c'

# grep
alias igrep='grep -i'

# safety aliases
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
