# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=ll
zstyle :compinstall filename '/home/ismboe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###################################
# from now on my own edits

# functions for prompt

function showtime
{
	echo -n "["
	echo -n $(clock -f %H:%M)
	echo -n "]"
}



# antigen
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle vi-mode
antigen bundle colored-man-pages

antigen bundle mafredri/zsh-async

#antigen bundle sindresorhus/pure
#antigen bundle agkozak/agkozak-zsh-theme
antigen bundle subnixr/minimal

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# autosuggestion bundle
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# end antigen
antigen apply


# minimal prompt settings

# Components on the left prompt
MNML_PROMPT=(mnml_ssh mnml_status mnml_keymap)

# Components on the right prompt
MNML_RPROMPT=('mnml_cwd 8 10' mnml_git showtime)

# Components shown on info line
MNML_INFOLN=(mnml_err mnml_jobs mnml_uhp mnml_files)

MNML_MAGICENTER=(mnml_me_git)


# prompt
autoload -U promptinit
autoload -U colors && colors
promptinit
#prompt pure


#prompt spaceship

#SPACESHIP_TIME_SHOW=true
#SPACESHIP_TIME_COLOR=green
#SPACESHIP_USER_SHOW=always
#SPACESHIP_USER_SUFFIX=""
#SPACESHIP_USER_COLOR=white
#SPACESHIP_HOST_SHOW=always
#SPACESHIP_HOST_PREFIX=@
#SPACESHIP_DIR_TRUNC=0
#SPACESHIP_DIR_TRUNC_REPO=false
#SPACESHIP_EXIT_CODE_SHOW=true
#SPACESHIP_PROMPT_ORDER=(
#  time          # Time stampts section
#  user          # Username section
#  dir           # Current directory section
#  host          # Hostname section
#  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  package       # Package version
#  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
#  julia         # Julia section
#  docker        # Docker section
#  aws           # Amazon Web Services section
#  venv          # virtualenv section
#  conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  dotnet        # .NET section
#  ember         # Ember.js section
#  kubecontext   # Kubectl context section
#  exec_time     # Execution time
#  line_sep      # Line break
#  battery       # Battery level and status
#  vi_mode       # Vi-mode indicator
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)


#SPACESHIP_RPROMPT_ORDER=(
#  time          # Time stampts section
#  dir           # Current directory section
#  git           # Git section (git_branch + git_status)
#  exec_time     # Execution time
#  battery       # Battery level and status
#  jobs          # Background jobs indicator
#)


bindkey	"^[[3~"	delete-char





# alias for colored cat, stolen from oh-my-zsh

alias ccat='colorize_via_pygmentize'
colorize_via_pygmentize()
{
    if [ ! -x "$(which pygmentize)" ]; then
        echo "package \'pygmentize\' is not installed!"
        return -1
    fi

    if [ $# -eq 0 ]; then
        pygmentize -g $@
    fi

    for FNAME in $@
    do
        filename=$(basename "$FNAME")
        lexer=`pygmentize -N \"$filename\"`
        if [ "Z$lexer" != "Ztext" ]; then
            pygmentize -l $lexer "$FNAME"
        else
            pygmentize -g "$FNAME"
        fi
    done
}

# confirm before overwriting something
alias cp="cp -i"

# human-readable sizes
alias df='df -h'

# show grep colors
alias grep='grep --color=auto'

# show sizes in MB
alias free='free -h'

# change to master theseis directory
alias master='cd /home/ismboe/Google\ Drive/Physik/MasterArbeit && exa -la --git'

alias more=less

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" -F --color=auto'

alias meinmerge='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=mergedPDF.pdf'

alias mycpufreq='sudo cpupower frequency-set -u'

alias vpnRUB='sudo openvpn /etc/openvpn/client/OpenVPN-RUB.ovpn'
#alias vpnRUB='sudo openvpn /etc/openvpn/client/RUBvpn_TCP.ovpn'

alias alert='notify-send 'ALERT' "$(date +%F%n%T)" -u critical & cvlc /home/ismboe/Musik/02_E1M1.flac'

alias ipinfo='curl ipinfo.io'

alias yt='cd /home/ismboe/Downloads/vidtemp/ && youtube-dl -c -f 136+140'

alias run='make run'

alias sdltut='cd ~/Dokumente/TEMP/sdl_tutorial/SDL_tutorial/'

alias matlab='wmname LG3D && matlab'

alias exa='exa --git'

#export TERM="xterm-256color"
