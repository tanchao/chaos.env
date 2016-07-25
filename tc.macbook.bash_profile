# set command line format
PS1='\[\e]2;\u@\h:\w\a\]\[\e[32;1m\]\u@\w\> \[\e[0m\]'

alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -lA'
alias ltr='ls -ltr | tail -10'
alias grep='grep --color'
alias lisp='/Users/tanchao/Documents/programs/ccl/dx86cl64 --no-init'

# Python Path set
PYTHONPATH=$PYTHONPATH:/Users/tanchao/Documents/workspace/chaos.trade
# add mongodb path
PATH=${PATH}:/Users/tanchao/Documents/programs/mongodb/bin
# add postgreSQL path
PATH=${PATH}:/Library/PostgreSQL/9.3/bin/
# lisp env
# CL_DEFAULT_DIRECTORY=/Users/tanchao/Documents/programs/ccl
# PATH=${PATH}:${CL_DEFAULT_DIRECTORY}
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# virtualenv settings
export VIRTUAL_ENV_DISABLE_PROMPT=1
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace/projects
[ -f "/usr/local/bin/virtualenvwrapper.sh" ] && source "/usr/local/bin/virtualenvwrapper.sh"
alias venv='mkvirtualenv'

# Setup or dismiss (goagent) proxy for curl, wget, etc.
alias gaproxy='export http_proxy=http://127.0.0.1:8087 https_proxy=http://127.0.0.1:8087'
alias noproxy='unset http_proxy https_proxy'

# shortcuts
alias cdnow='cd /Users/tanchao/Documents/projects/chaos.lab/stopt'

# source homebrew_complete
. /usr/local/etc/bash_completion

# AWS related
export AWS='ec2-52-220-48-176.ap-southeast-1.compute.amazonaws.com'
export PEM='/Users/tanchao/workspace/credentials/thursday-ec2-t2micro.pem'
alias sshaws='ssh -i $PEM ec2-user@$AWS'
alias scpaws='scp -i $PEM'

# java version
export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_HOME
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk6='export JAVA_HOME=$JAVA_6_HOME'
