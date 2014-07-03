# Configure the fish
set fish_path $HOME/.oh-my-fish
set fish_theme nemo
set fish_plugins git

# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set -gx PATH $netzwerg $homebrew $PATH

# Set default text editor to Sublime.
set -gx EDITOR 'subl -w'
set -gx VISUAL 'subl -w'

# Handy aliases
alias e=$EDITOR
alias ll='ls -alh'

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish