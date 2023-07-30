FROM debian:12.1-slim

LABEL org.opencontainers.image.source="https://github.com/szepeviktor/byte-level-care"

ARG LC_ALL=C
ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

RUN set -e -x \
    && ls -l -A
