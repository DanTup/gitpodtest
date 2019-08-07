FROM gitpod/workspace-full

ENV PATH="$PATH":"/workspace/flutter/bin"

RUN mkdir /workspace
WORKDIR /workspace

RUN git clone --branch stable https://github.com/flutter/flutter
