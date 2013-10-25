# .bash_profile

###########################################################
# Environment Variables
###########################################################

export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagacad
export HISTFILESIZE=3333
export DOT_FILES=$HOME/dotfiles

## Octopress/Ruby Encoding Issues
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$USER_HOME/Dropbox/bin:$M2_HOME/bin:$MYSQL_HOME/bin:/usr/local/bin:/Applications/Xcode.app/Contents/Developer/usr/bin/:$PATH

###########################################################
# Prompt
###########################################################

source $DOT_FILES/git-completion.bash
source $DOT_FILES/git-prompt.sh
WHITE='\[\e[m\]'
BLUE='\[\e[1;34m\]'
GREEN='\[\e[1;32m\]'
GIT_STATUS='$(__git_ps1 " %s")'
PROMPT_CHAR='\$ '
PS1="${WHITE}\u@\h:${BLUE}\w${GREEN}${GIT_STATUS} ${WHITE}${PROMPT_CHAR}"

###########################################################
# Aliases & Functions (No params in Bash)
###########################################################

alias ll='ls -alh'
alias e=$EDITOR
alias o=open
alias mb='du -kh'
del () { /bin/mv -i ${*} ~/.Trash; }
