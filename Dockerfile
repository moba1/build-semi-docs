FROM ubuntu:latest

RUN \
  sed -i -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list


RUN \
  apt update && \
  apt upgrade -y --no-install-recommends && \
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
    latex-cjk-all \
    make

CMD "bash"
