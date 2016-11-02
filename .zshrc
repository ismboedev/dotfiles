# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ismboe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###################################
# from now on my own edits

# prompt
autoload -U promptinit
autoload -U colors && colors
promptinit
prompt walters


bindkey	"^[[3~"	delete-char



# confirm before overwriting something
alias cp="cp -i"

# human-readable sizes
alias df='df -h'

# show sizes in MB
alias free='free -m'

alias more=less

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" -F --color=auto'

alias mycpufreq='sudo cpupower frequency-set -u'


#export TERM="xterm-256color"
