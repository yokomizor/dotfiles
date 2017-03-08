FROM ubuntu:latest

WORKDIR /root

RUN apt-get update && apt-get install -y \
    git \
    bash-completion \
    tmux \
    vim \
    alpine \
    irssi \
    docker.io \
    --no-install-recommends && rm -r /var/lib/apt/lists/*

ADD .tmux.conf .
ADD .vim .
ADD .vimrc .

CMD /usr/bin/tmux
