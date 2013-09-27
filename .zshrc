source ./.zsh/git-prompt/zshrc.sh

PROMPT=$'%{\e[1;31m%}%n@%m:%{\e[0m%}%~$(git_super_status)%# '

if [[ -z "$TMUX" ]]; then
	tmux new-session -d -s me
	tmux new-session -d -s atados
	tmux new-session -d -s airu
	tmux select-window -t me:0
	tmux attach-session -t me
fi

export PATH=$PATH:$HOME/bin:$HOME/.rvm/bin
export EDITOR=vim
