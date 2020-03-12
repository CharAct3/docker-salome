FROM python:3.7

RUN apt update
RUN apt install -y curl net-tools
RUN apt install -y libgl1-mesa-glx libpng16-16

RUN mkdir /opt/salome
RUN curl -sL https://www.salome-platform.org/downloads/current-version/DownloadDistr\?platform\=SP.UB18.04\&version\=9.4.0 | tar zxf - -C /opt/salome --strip-components 1

ENV PATH /opt/salome:$PATH
