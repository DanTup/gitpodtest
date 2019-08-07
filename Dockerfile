FROM gitpod/workspace-full

ENV PATH="$PATH":"/home/gitpod/flutter/bin"

RUN cd /home/gitpod && \
  git clone --branch master https://github.com/flutter/flutter
