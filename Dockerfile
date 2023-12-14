#
# Build container
#

FROM ubuntu:latest

USER root

WORKDIR /build

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install rheolef
