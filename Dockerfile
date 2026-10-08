//bUScar el dockerhub si existe un distro de linux especifico
//o busca una ambiente para el docker
FROM ubuntu:latest

#argumento al sistema operativo para que el GUI no cause problemas
ARG DEBIAN_FROTEND=noninnteractive

#se instala python
RUN apt-get update && apt-get install -y\
    python3 \
    python3-pip \
    git \
    curl \
    && rm -rf \var\lib\apt\lists\*



WORKDIR / workspace

RUN git clone https://github.com/Ejazly/SDAct2026.git

CMD ["sleep", "infinity"]

