# Configure the fish
set fish_path $HOME/.oh-my-fish
set fish_theme nemo
set fish_plugins git

# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"

set -gx EDITOR "vim"
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home"
set -gx SCALA_HOME "$dev/scala-2.11.1"
set -gx XNAT_HOME "$HOME/Projects/xnat"

set -gx DOCKER_HOST "tcp://192.168.59.103:2376"
set -gx DOCKER_CERT_PATH "/Users/netzwerg/.boot2docker/certs/boot2docker-vm"
set -gx DOCKER_TLS_VERIFY "1"

set -gx PATH $netzwerg $homebrew $SCALA_HOME/bin $XNAT_HOME/bin $PATH

# Handy aliases
alias e=mvim
alias mi=mvim
alias ll='ls -alh'
alias st=stree

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
