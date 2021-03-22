FROM ubuntu:20.04

RUN apt update && apt install -y wget \
    && wget -qO- https://deb.nodesource.com/setup_15.x | bash - \
    && apt install -y nodejs \
    && npm install --global yarn \
    && groupadd -g 1000 user1 \
    && useradd -d /home/user1 -s /bin/bash -m user1 -u 1000 -g 1000 \
    && echo "PATH=\"\$(yarn global bin):\$PATH\"" >> /home/user1/.profile \
    && mkdir /workdir/ \
    && chown user1:user1 /workdir/ \
    && echo "done"

RUN echo "#!/bin/sh\nset -e\n\ncase \$1 in\n  bash|npm)\n    \$@\n    ;;\n  *)\n    yarn \$@\n    ;;\nesac" >> /entrypoint.sh \
    && chmod +x /entrypoint.sh

USER user1
ENV HOME /home/user1
WORKDIR /workdir/
ENTRYPOINT ["/entrypoint.sh"]

