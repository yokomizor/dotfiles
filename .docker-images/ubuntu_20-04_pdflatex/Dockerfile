FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get update && apt-get install -y \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    && groupadd -g 1000 user1 \
    && useradd -d /home/user1 -s /bin/bash -m user1 -u 1000 -g 1000 \
    && mkdir /workdir/ \
    && chown user1:user1 /workdir/ \
    && echo "done"

USER user1
ENV HOME /home/user1
WORKDIR /workdir/
ENTRYPOINT ["/usr/bin/pdflatex"]
