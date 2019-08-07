FROM debian:stretch

ENV PATH="$PATH":"/workspace/flutter/bin"

RUN apt-get update \
    && apt-get -y install git procps wget curl unzip lib32stdc++6 openjdk-8-jdk

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /workspace
WORKDIR /workspace

RUN git clone --branch stable https://github.com/flutter/flutter \
    && flutter doctor

RUN (yes | flutter doctor --android-licenses)