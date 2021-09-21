FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN wget https://eclipse.mirror.rafal.ca/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz
