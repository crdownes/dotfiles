export INTENT_HOME="/Users/christopher.downes/Development/code"

# Needed for RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ll="ls -la"
alias c="cd ~/Development/code"
alias e="cd ~/Development/code/extranet"
alias cuke="bundle exec cucumber -c"
alias gs="git status"
alias subl="open -a /Applications/Sublime\ Text\ 2.app ."
export PATH="/usr/local/bin:$PATH"

export USR_LOCAL_HOME=/usr/local/bin
export JAVA_HOME=/Library/Java/Home
export MYSQL_HOME=/usr/local/mysql/bin
export JRUBY_HOME=$INTENT_HOME/conf/vms/ruby/jruby/bin
export GEMS_HOME=$INTENT_HOME/conf/vms/ruby/jruby/lib/ruby/gems/1.8/bin
export PATH=$HOME/local/bin:$JAVA_HOME/bin:$MYSQL_HOME:$JRUBY_HOME:$GEMS_HOME:$USR_LOCAL_HOME:$PATH

export HISTFILESIZE=5000
export HISTCONTROL=ignoredups:erasedups

alias im-mysql-master="ssh christopher.downes@ec2-23-20-130-5.compute-1.amazonaws.com"
alias im-mysql-slave="ssh christopher.downes@ec2-107-22-134-42.compute-1.amazonaws.com"
alias im-jr="ssh christopher.downes@ec2-204-236-220-253.compute-1.amazonaws.com"
alias im-skipper="ssh christopher.downes@ec2-184-73-250-129.compute-1.amazonaws.com"
alias im-ex-lb="ssh christopher.downes@ec2-54-243-152-41.compute-1.amazonaws.com"
alias im-lp-1="ssh christopher.downes@ec2-23-21-132-245.compute-1.amazonaws.com"
alias im-lp-2="ssh christopher.downes@ec2-23-21-131-12.compute-1.amazonaws.com"
alias im-ex-50="ssh christopher.downes@23.20.237.108"
alias im-ex-51="ssh christopher.downes@23.20.217.78"
alias im-as-440="ssh christopher.downes@50.17.131.176"
alias im-as-442="ssh christopher.downes@23.21.33.129"
alias im-as-475="ssh christopher.downes@54.234.32.117"
alias im-as-476="ssh christopher.downes@23.20.206.142"
alias im-as-480="ssh christopher.downes@23.23.17.170"
alias im-as-481="ssh christopher.downes@54.242.100.177"
alias im-as-490="ssh christopher.downes@54.235.0.127"
alias im-as-492="ssh christopher.downes@23.22.79.145"
alias im-toku-slurp-7="ssh christopher.downes@50.16.171.66"

export JRUBY_OPTS=--1.8

function jstest() {
  ant -Dargs="$1" -f $INTENT_HOME/tags/build/build.xml start-and-run-all 
}

function spoof_ads() {
  sudo $INTENT_HOME/conf/scripts/spoof_ads/spoof_ads $@
}

function respoof() {
  ant -f $INTENT_HOME/adServer/build/build.xml concatenate && spoof_ads on
}

source /usr/local/etc/bash_completion.d/*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GREEN='0;32m'
YELLOW='1;33m'
PS1='[\u@\h \[\033[$GREEN\]\W\[\033[0m\]\[\033[$YELLOW\]$(__git_ps1 " (%s)")\[\033[0m\]]\$ '
