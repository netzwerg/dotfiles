# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"
set browser "Firefox Developer Edition"

set -gx EDITOR "vim"

set -gx GRADLE_OPTS "-Dfile.encoding=UTF-8"

set -gx PATH $netzwerg $homebrew $PATH

# Handy aliases
alias vi=vim
alias ll='ls -alh'
alias gp='git push'
alias ns='npm run start'
alias ys='yarn start'
alias ni='npm install'
alias yi='yarn install'
alias nt='npm run test'
alias yt='yarn test'
alias find-note='mdfind -name notes.txt -onlyin ~ -0 | xargs -0 grep -i'
alias scala="command scala -Dscala.color"

# Docker machine initialization
# eval (docker-machine env)
