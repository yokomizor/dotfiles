export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

export EDITOR=vim
export PAGER=less
export MANWIDTH=80
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

source "$HOME/.cargo/env"
source "$HOME/.aliases"

gpgconf --launch gpg-agent
