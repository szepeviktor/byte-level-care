FROM debian:12.1-slim

ARG LC_ALL=C
ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

RUN set -e -x \
    && ls -l -A
