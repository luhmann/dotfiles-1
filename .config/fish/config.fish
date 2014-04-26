#Aliases
alias ddev 'cd ~/Dev'
alias dmn 'cd ~/Dev/myvideo/myvideo-nextlevel'
alias dms 'cd ~/Dev/myvideo/myvideo-styles'

alias ip 'dig +short myip.opendns.com @resolver1.opendns.com'
alias network_ip 'ifconfig | grep 'inet'

alias v 'vim'

alias vu 'vagrant up'
alias vh 'vagrant halt'
alias vssh 'vagrant ssh'

alias o 'open'
alias oo 'open .'

alias ..    'cd ..'
alias ...   'cd ../..'
alias ....  'cd ../../..'
alias ..... 'cd ../../../..'

function psg -d "Grep for a running process, returning its PID and full string"
    ps auxww | grep --color=always $argv | grep -v grep | collapse | cuts -f 2,11-
end

set -g -x EDITOR vim

# Homebrew
set --export PATH /usr/local/bin /usr/local/sbin $PATH

 # Npm binaries
 set --export PATH /usr/local/share/npm/bin $PATH

# Node
set --export NODE_PATH /usr/local/lib/node_modules

 # Color grep output
 set --export GREP_OPTIONS --color=auto

# Rbenv
set --export PATH $HOME/.rbenv/bin $PATH
set --export PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# expose PATH to graphical apps
launchctl setenv PATH $PATH
