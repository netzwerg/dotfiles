# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"

set -gx EDITOR "vim"
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home"

set -gx GRADLE_OPTS "-Dfile.encoding=UTF-8"

set -gx PATH $netzwerg $homebrew $PATH

# Handy aliases
alias e=mvim
alias mi=mvim
alias vi=vim
alias ll='ls -alh'
alias st=stree
alias find-note='mdfind -name notes.txt -onlyin ~ -0 | xargs -0 grep -i'
alias scala="command scala -Dscala.color"

# Docker machine initialization
# eval (docker-machine env)