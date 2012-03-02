PROMPT=$'%{\e[1;31m%}%n@%m:%{\e[0m%}%~$ '

if [[ -z "$TMUX" ]]; then
	tmux new-session -d -s rogerio
	tmux new-window -t rogerio:1 'alpine'
	tmux select-window -t rogerio:0
	tmux attach-session -t rogerio
fi
