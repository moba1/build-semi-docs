FROM debian:buster

RUN \
  apt update && \
  apt upgrade -y && \
  apt -y --no-install-recommends install \
    texlive-lang-japanese \
    texlive-luatex \
    texlive-xetex \
    biber \
    texlive-pictures \
    texlive-latex-base \
    latexmk \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-science \
    make

RUN \
  useradd -m -g users build && \
  mkdir -p /build && \
  chown -R build:users /build
USER build

CMD "bash"
