#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# User options
source ~/.zsh/history.zsh
source ~/.zsh/aliases.zsh

# Plugin manager
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions", use:zsh-autosuggestions.zsh
zplug "zsh-users/zsh-history-substring-search", use:zsh-history-substring-search.zsh
zplug load

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Show git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST

PROMPT='%F{red}%B%n@%m%f:%F{none}%~%f%b%F{blue}$(parse_git_branch)%{%F{none}%} $ '

# Text editors
export EDITOR=vim
export VISUAL=vim

# Autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init --path)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
