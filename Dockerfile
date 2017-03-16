FROM ubuntu:latest

WORKDIR /root

RUN apt-get update && apt-get install -y \
    wget \
    git \
    ssh \
    bash-completion \
    tmux \
    vim \
    alpine \
    irssi \
    docker.io \
    --no-install-recommends && \
    rm -r /var/lib/apt/lists/* && \
    wget https://github.com/github/hub/releases/download/v2.3.0-pre9/hub-linux-amd64-2.3.0-pre9.tgz --no-check-certificate && \
    tar -xvzf hub-linux-amd64-2.3.0-pre9.tgz && \
    ./hub-linux-amd64-2.3.0-pre9/install && \
    rm -r ./hub-linux-amd64-2.3.0-pre9.tgz

ADD .tmux.conf /etc/tmux.conf
ADD .vimrc /etc/vim/vimrc.local
ADD .vim/autoload /etc/vim/autoload
ADD .vim/doc /etc/vim/doc
ADD .vim/plugin /etc/vim/plugin

ENTRYPOINT tmux
