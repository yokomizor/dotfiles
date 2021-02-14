FROM ubuntu:20.04
RUN apt update && apt install -y \
    x11-apps \
    firefox \
    && groupadd -g 1000 user1 \
    && useradd -d /home/user1 -s /bin/bash -m user1 -u 1000 -g 1000 \
    && echo "done"

ADD .mozilla.tar.gz /home/user1

USER user1
ENV HOME /home/user1
CMD /bin/bash
