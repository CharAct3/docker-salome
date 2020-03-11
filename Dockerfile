FROM ubuntu:18.04

RUN apt update && apt install -y curl

RUN mkdir /opt/salome

RUN curl -L https://www.salome-platform.org/downloads/current-version/DownloadDistr\?platform\=SP.UB18.04\&version\=9.4.0 -o salome.tar.gz
RUN tar -zxf salome.tar.gz -C /opt/salome --strip-components 1
RUN rm salome.tar.gz

RUN apt update
RUN apt install -y python python3 net-tools
