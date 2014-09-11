# Configure the fish
set fish_path $HOME/.oh-my-fish
set fish_theme nemo
set fish_plugins git

# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"
set -gx SCALA_HOME "$dev/scala-2.11.1"
set -gx PATH $netzwerg $homebrew $SCALA_HOME/bin $PATH

set --export EDITOR "mvim -f --nomru -c 'au VimLeave * !open -a Terminal'"

# Handy aliases
alias e=$EDITOR
alias ll='ls -alh'

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
