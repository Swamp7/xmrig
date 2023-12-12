FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt -y update \
    && apt -y install wget \
    && apt -y install libcurl3 \
    && apt -y install libjansson4 \
    && wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-focal-x64.tar.gz \
    && tar xvzf xmrig-6.21.0-focal-x64.tar.gz \
    && rm xmrig-6.21.0-focal-x64.tar.gz

WORKDIR /xmrig-6.21.0

ENTRYPOINT ["./xmrig"]
