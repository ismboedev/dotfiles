# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
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

# show grep colors
alias grep='grep --color=auto'

# show sizes in MB
alias free='free -h'

# change to master theseis directory
alias master='cd /home/ismboe/Google\ Drive/Physik/MasterArbeit && exa -la --git'

alias more=less

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" -F --color=auto'

alias meinmerge='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=finished.pdf'

alias mycpufreq='sudo cpupower frequency-set -u'

alias vpnRUB='sudo openvpn /etc/openvpn/client/OpenVPN-RUB.ovpn'
#alias vpnRUB='sudo openvpn /etc/openvpn/client/RUBvpn_TCP.ovpn'

alias alert='notify-send 'ALERT' "$(date +%F%n%T)" -u critical & cvlc /home/ismboe/Musik/02_E1M1.flac'

alias ipinfo='curl ipinfo.io'

alias yt='cd /home/ismboe/Downloads/vidtemp/ && youtube-dl -c -f 136+140'

alias run='make run'

alias sdltut='cd ~/Dokumente/TEMP/sdl_tutorial/SDL_tutorial/'

#export TERM="xterm-256color"
