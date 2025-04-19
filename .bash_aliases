# ls
alias l.='ls -d .*'

# apt, snap
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias refresh='sudo snap refresh'
alias uur='sudo apt update && sudo apt upgrade -y && sudo snap refresh'

# git
alias gs='git status'
alias gp='git push'
alias gl='git pull'
alias gc='git commit -m'
alias ga='git add'
alias glg='git log'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# safety aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
