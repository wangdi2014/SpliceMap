From ubuntu:16.04

#set up environment
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
               git \
    && apt-get autoremove \
    && apt-get clean

#set up software
ENV REPO https://github.com/jason-weirather/SpliceMap.git
RUN git clone $REPO /Source/SpliceMap \
    && cd /Source/SpliceMap \
    && cp /Source/SpliceMap/bin/* /usr/local/bin/