# Update the PATH to ensure Homebrew packages are used.
set homebrew  "/usr/local/bin"
set netzwerg  "$HOME/bin"
set browser "Firefox Developer Edition"
set dotlocal "$HOME/.local/bin"

set -gx EDITOR "vim"
set -gx OMF_CONFIG "$HOME/.config/omf"
set -gx GRADLE_OPTS "-Dfile.encoding=UTF-8"
set -gx ANDROID_SDK_ROOT "$HOME/Library/Android/sdk"
set -gx JAVA_HOME "$HOME/.sdkman/candidates/java/current"
# set -gx JAVA_OPTS "-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee"
# unset when on Java 8
set -gx JAVA_OPTS ""
set android "$ANDROID_SDK_ROOT/tools/bin" "$ANDROID_SDK_ROOT/cmdline-tools/latest/bin" "$ANDROID_SDK_ROOT/platform-tools" "$ANDROID_SDK_ROOT/emulator"
set -gx RCT_METRO_PORT 1234
set -gx PATH $netzwerg $homebrew $android $JAVA_HOME $dotlocal $PATH

# Handy aliases
alias vi=vim
alias ll='ls -alh'
alias gp='git push'
alias ns='npm run start'
alias ys='yarn start'
alias bs='bun start'
alias ni='npm install'
alias yi='yarn install'
alias bi='bun install'
alias nt='npm run test'
alias yt='yarn test'
alias find-note='mdfind -name notes.txt -onlyin ~ -0 | xargs -0 grep -i'
alias scala="command scala -Dscala.color"

# Docker machine initialization
# eval (docker-machine env)

source $HOME/dotfiles/.config/iterm2/iterm.fish

# Google Cloud SDK configuration
set -x PATH $PATH $HOME/google-cloud-sdk/bin

# Particularly useful when copy/pasting from MacOS Notes app.
function clean_clipboard
    # Get clipboard content, replace Unicode line separator (U+2028) with a normal newline, and copy back
    pbpaste | python3 -c 'import sys; print(sys.stdin.read().replace("\u2028", "\n"))' | pbcopy
    echo "Clipboard cleaned!"
end

if test "$TERM_PROGRAM" = "vscode"
    source $HOME/dotfiles/.config/fish/functions/vscode_prompt.fish
end
# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/rahel.luethy@fhnw.ch/.cache/lm-studio/bin
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
