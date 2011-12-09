PROMPT=$'%{\e[1;31m%}%n@%m:%{\e[0m%}%~$ '

if [[ -d "/opt/local/bin" ]]; then
	export PATH=$PATH:/opt/local/bin
fi

if [[ -d "/opt/local/sbin" ]]; then
	export PATH=$PATH:/opt/local/sbin
fi


if [[ -z "$TMUX" ]]; then
	tmux
fi
