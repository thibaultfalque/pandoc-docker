FROM alpine:latest

LABEL  maintainer="Stephen Steiner <ntwrkguru@gmail.com>"

# Install dependencies
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
       texlive-full \
       texlive-xetex latex-xcolor \
       texlive-math-extra \
       texlive-latex-extra \
       texlive-fonts-extra \
       texlive-bibtex-extra \
       fontconfig \
       lmodern \
       libghc-text-icu-dev \
       zip \
       wget \
       build-essential \
    && apt-get clean

# Install cabal and then pandoc + citeproc
RUN wget https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb && dpkg -i pandoc-2.7.2-1-amd64.deb

WORKDIR /build
