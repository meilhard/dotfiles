# base-files version 3.7-1

# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
set -o ignoreeof

# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit"

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"


# Aliases
# #######

alias h='history'
#alias rxvt='rxvt -cr yellow -fn courier -e /bin/bash'
alias mc='mc -s -C normal=yellow,black:selected=black,white:marked=brightblue,white:markselect=blue,white:directory=brightgreen,black:executable=brightcyan,black:editnormal=white,black'
#alias yap='cygstart /cygdrive/c/miktex2.7/miktex/bin/yap'
alias go='cygstart'
alias zterm='xterm -rv'
alias clean='rm *.bbl *.blg *.aux *.dvi *.log *.toc *.bak *~ *.out *.end'
alias spell='/usr/local/bin/spell'
#alias mklatex='/usr/local/bin/latexmk.pl'

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Default to human readable figures
 alias df='df -h'
 alias du='du -h'

# Misc :)
 alias less='less -r'                          # raw control characters
 alias whence='type -a'                        # where, of a sort
 alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
 alias ls='ls -hF --color=tty'                 # classify files in colour
 alias dir='ls --color=auto --format=vertical'
 alias vdir='ls --color=auto --format=long'
 alias ll='ls -l'                              # long list
 alias la='ls -A'                              # all but . and ..
 alias l='ls -CF'                              #
 alias ..='cd ..'
 alias ...='cd ../..'

alias g='git'


# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

# Functions
# #########

# Some example functions
# function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }


# Path
# ####

PATH=$PATH:.
PATH=$PATH:/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/X11R6/bin
#PATH=$PATH:/cygdrive/c/ImageMagick-6.2.9-Q16
#PATH=$PATH:/cygdrive/c/miktex2.7/miktex/bin
PATH=$PATH:`cygpath -S`
PATH=$PATH:`cygpath -W`


# Editor
# ######

export EDITOR='vi'

#function _ssh_completion() {
#
#perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
#
#}

#complete -W "$(_ssh_completion)" ssh

# Fancy prompt
#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]$(__git_ps1 " (%s)") \w \$\[\033[00m\] "
#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
export PS1="\[\e[32;1m\]\u\[\e[0m\]\[\e[32m\]@\h \[\e[36m\]\w \[\e[33m\]\$ \[\e[0m\]"
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
