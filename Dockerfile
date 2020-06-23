FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get -y install --no-install-recommends \
  fonts-font-awesome \
  texlive-bibtex-extra \
  texlive-latex-extra \
  texlive-fonts-extra  \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
