FROM ubuntu:latest

WORKDIR /root

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    bash-completion \
    tmux \
    vim \
    alpine \
    irssi \
    docker.io \
    --no-install-recommends && rm -r /var/lib/apt/lists/*

ADD root /tmp/home
ADD entrypoint /bin/entrypoint

ENTRYPOINT /bin/entrypoint
