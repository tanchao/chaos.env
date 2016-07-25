#CEL 06/13/2016: make colorful outpus by default setting 

# -G colorful output
# -F show flag after the file/folder like * for executable file and @ for link
# -h show size units (K/byte/..) with -l together 
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -lA'

# alias
alias ec2='ssh tcchao@tcchao.aka.corp.amazon.com'
alias odin='ssh -fNL 2009:localhost:2009 tcchao.aka.corp.amazon.com'
alias ckodin='curl localhost:2009'
alias proxy='cd ~/amz/;nohup ./sshtunnel &;cd -'
alias ipconfig='ifconfig | grep inet'
alias myws='cd ~/amz/workspace-idea/'

# use preview.app to open man document

pman ( ) { man -t "$@" | open -f -a Preview; }

# ex –> directory / blue / default
# fx –> symbolic link / magenta / default
# cx –> socket / green / default
# dx –> pipe / brown / default
# bx –> executable / red / default
# eg –> block special / blue / cyan
# ed –> character special / blue / brown
# ab –> executable with setuid / black / red
# ag –> executable without setuid / black / cyan
# ac –> directory with sticky / black / green
# ad –> directory without sticky / black / brown
# 
# color alias
# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# x default color
# 
# type order
# 1.directory
# 2.symbolic link – special kind of file that contains a reference to another file or directory.
# 3.socket – special kind of file used for inter-process communication.
# 4.pipe – special file that connects the output of one process to the input of another.
# 5.executable
# 6.block special – a kind of device file.
# 7.character special – a kind of device file.
# 8.executable with setuid bit set (setuid is a short for set user ID upon execution).
# 9.executable with setgid bit set (setgid is a short for set group ID upon execution).
# 10.directory writable to others, with sticky bit – only the owner can rename or delete files.
# 11.directory writable to others, without sticky bit – any user with write and execution permissions can rename or delete files.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad



# customize the shell prompt PS1 var
# \t – time
# \d – date
# \n – newline
# \s – Shell name
# \W – Current working directory
# \w – The full path of the current working directory.
# \u – Current username
# \H – Display FQDN hostname
# \h – Hostname
# \# – The command number of this command.
# \! – The history number of the current command
# To add colors to the shell prompt, use the following export command syntax:
# 
# "\e[x;ym $PS1 \e[m"
# \e[ Start color scheme
# x;y Color pair to use (x;y)
# $PS1 is your shell prompt
# \e[m Stop color schem
# 
# List of Color codes:
# 
# 0;30 Black
# 0;34 Blue
# 0;32 Green
# 0;36 Cyan
# 0;31 Red
# 0;35 Purple
# 0;33 Brown
# 0;34 Blue
# 0;32 Green
# 0;36 Cyan
# 0;31 Red
# 0;35 Purple
# 0;33 Browne
export PS1="\[\e[0;33m\][\u@\h\[\e[m\] \[\e[0;34m\]\w\[\e[m\]\[\e[0;33m\]]$\[\e[m\] "
# show [Username(Brown)@Hostname(Brown) Full Directory(Red)]$

# enables color for iTerm
export TERM=xterm-256color

# PATH confs
# add brazil tool
export PATH="/apollo/env/SDETools/bin:$PATH"
# add maven bin 
export PATH="$PATH:/Users/tcchao/amz/softwares/apache-maven-3.3.9/bin"
