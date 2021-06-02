# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set dev "$HOME/Dev"
set browser "Firefox Developer Edition"

set -gx EDITOR "vim"
set -gx GRADLE_OPTS "-Dfile.encoding=UTF-8"
set -gx ANDROID_SDK_ROOT "$HOME/Library/Android/sdk"
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
set android "$ANDROID_SDK_ROOT/tools/bin" "$ANDROID_SDK_ROOT/platform-tools" "$ANDROID_SDK_ROOT/emulator"

set -gx PATH $netzwerg $homebrew $android $JAVA_HOME $PATH

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
