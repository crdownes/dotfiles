export INTENT_HOME="/Users/christopher.downes/Development/code"

source ~/.aliases
source ~/.im_aliases

# Needed for RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="/usr/local/bin:$PATH"

export USR_LOCAL_HOME=/usr/local/bin
export JAVA_HOME=/Library/Java/Home
export MYSQL_HOME=/usr/local/mysql/bin
export JRUBY_HOME=$INTENT_HOME/conf/vms/ruby/jruby/bin
export GEMS_HOME=$INTENT_HOME/conf/vms/ruby/jruby/lib/ruby/gems/1.8/bin
export PATH=$HOME/local/bin:$JAVA_HOME/bin:$MYSQL_HOME:$JRUBY_HOME:$GEMS_HOME:$USR_LOCAL_HOME:$PATH

export HISTFILESIZE=5000
export HISTCONTROL=ignoredups:erasedups

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
#PS1='[\u@\h \[\033[$GREEN\]\W\[\033[0m\]\[\033[$YELLOW\]$(__git_ps1 " (%s)")\[\033[0m\]]\$ '
