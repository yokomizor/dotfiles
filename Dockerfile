FROM ubuntu:latest

WORKDIR /root

RUN apt-get update && apt-get install -y \
    wget \
    curl \
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

RUN git clone -c http.sslVerify=false https://github.com/scrooloose/nerdtree.git /etc/vim/bundle/nerdtree
RUN git clone -c http.sslVerify=false https://github.com/vim-scripts/dbext.vim /etc/vim/bundle/dbext

ADD .tmux.conf /etc/tmux.conf
ADD .vimrc /etc/vim/vimrc.local
ADD .vim/autoload /etc/vim/autoload

ENTRYPOINT tmux
