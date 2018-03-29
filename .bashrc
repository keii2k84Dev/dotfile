# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# git
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# prompt
if [ "x$ROOT_NAME" != "x" ]; then
    PS1_HOST="\h:$ROOT_NAME"
else
    PS1_HOST="\h"
fi

if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
    export PS1="[$PS1_HOST \W]\$(__git_ps1 '[%s]')\\$ "
else
    export PS1="[$PS1_HOST \W]\\$ "
fi

# user alias
PATH=${PATH}:/home/bin
alias te='cat /home/logs/apache/error | tail'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color'
alias tailf='tail -f /home/logs/apache/error'
 
alias ssh='ssh -2'
alias sudo='sudo -E'

#svn shortcut
alias st='svn status'
alias sup='svn update'

# Oracle
export ORACLE_HOME=/home/lib64/ora11gclient
export TNS_ADMIN=/home/conf/oracle
export NLS_LANG=Japanese_Japan.AL32UTF8
export LD_LIBRARY_PATH=/home/lib64/ora11gclient
export PATH=$PATH:$ORACLE_HOME
stty erase 
alias sqlplus='rlwrap /home/lib64/ora11gclient/sqlplus'

