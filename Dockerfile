#
# Build container
#

FROM ubuntu:latest

USER root

WORKDIR /build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y git make g++ autoconf automake libtool flex libfl-dev bison chrpath bsdmainutils  \
  && apt-get install -y libboost-dev libboost-iostreams-dev libboost-mpi-dev libcgal-dev libeigen3-dev ginac-tools libginac-dev pkg-config  \
  && apt-get install -y liblapack-dev libsuitesparse-dev libscotch-dev libptscotch-dev libmumps-scotch-dev libmumps-ptscotch-dev \
  && apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-science texlive-fonts-recommended texlive-font-utils \
  && apt-get install -y texlive-extra-utils cm-super ghostscript poppler-utils doxygen gnuplot fig2dev cairosvg \
  && apt-get install -y gmsh \
  && apt-get install -y wget

RUN wget --no-check-certificate https://www-ljk.imag.fr/membres/Pierre.Saramito/rheolef/rheolef-7.2.tar.gz \
  && tar xvzf rheolef-7.2.tar.gz

WORKDIR rheolef-7.2

RUN ./bootstrap

RUN ./configure

RUN make

RUN make install

