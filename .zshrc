# Nikolay Penchev zsh configuration
#
#
#
# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt inc_append_history
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
####
# BindKeys
bindkey '^[[1;5C' forward-word  # Ctrl+arrow right
bindkey '^[[1;5D' backward-word # Ctrl+arrow left

# Enable suggestions
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
####
# Git prompt

parse_git_branch() {
	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'

}
setopt prompt_subst
PROMPT='%F{cyan}%n%f:%F{77}${PWD/#$HOME/~}%f%F{red}$(parse_git_branch)%f
% $ '


export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
####

# Default aliases
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
