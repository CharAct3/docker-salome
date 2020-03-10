FROM ubuntu:18.04

RUN mkdir /opt
RUN cd /opt && curl -L https://www.salome-platform.org/downloads/current-version/DownloadDistr?platform=SP.UB18.04&version=9.4.0 -o salome.tar.gz
RUN mkdir /opt/salome && tar xfz salome.tar.gz -C /opt/salome --strip-components 1

RUN apt update
RUN apt install -y python python3 net-tools
