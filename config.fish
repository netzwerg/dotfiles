# Path to Oh My Fish install.
set -gx OMF_PATH /Users/netzwerg/.local/share/omf

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG /Users/netzwerg/dotfiles/omf-config

# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"

set -gx EDITOR "vim"
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home"
set -gx SCALA_HOME "$dev/scala-2.11.1"

set -gx GRADLE_OPTS "-Dfile.encoding=UTF-8"

set -gx PATH $netzwerg $homebrew $SCALA_HOME/bin $XNAT_HOME/bin $PATH

# Handy aliases
alias e=mvim
alias mi=mvim
alias vi=vim
alias ll='ls -alh'
alias st=stree
alias find-note='mdfind -name notes.txt -onlyin ~ -0 | xargs -0 grep -i'

# Docker machine initialization
eval (docker-machine env)

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
