# misc
alias rsync='rsync -havz --progress'
alias weather='curl wttr.in'

# dev
alias venv='source venv/bin/activate'
alias pyclean='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'

# file management
alias l='ls -CF'
alias ll='ls -alF'
alias lh='ls -lh'
alias lah='ls -lahtr'
alias la='ls -A'

# Apt
alias acs='apt search'
alias agi='sudo apt-get install'
alias dgs='sudo dpkg --get-selections'
alias au='sudo apt update && sudo apt -y upgrade'

# Git
alias gcam='git commit -a -m'
alias gcm='git commit -m'
alias gpp='git pull && git push'
alias gst='git status'
alias gfp='git fetch --prune'
alias gb='git branch -a'
alias gbm='git branch -a --merged master'
alias glp='git log --oneline --decorate --color'
alias glpg='git log --oneline --graph --decorate --all'
alias gd='git diff'
alias gco='git checkout'
