export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"

export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_NDK_HOME="$ANDROID_HOME/ndk-bundle"

export EDITOR=vim
export PAGER=less
export MANWIDTH=80
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export NVM_DIR="$HOME/.nvm"

[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"
[ -s "$HOME/.aliases" ] && \. "$HOME/.aliases"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
