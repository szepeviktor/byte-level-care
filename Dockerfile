FROM debian:12.1-slim

LABEL org.opencontainers.image.title="Byte-level care"
LABEL org.opencontainers.image.description="A robust web application"
LABEL org.opencontainers.image.vendor="Szépe Viktor"
LABEL org.opencontainers.image.authors="viktor@szepe.net"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.created="2023-07-30 06:35:19.552608550+00:00"
LABEL org.opencontainers.image.revision="2bdcd76"
LABEL org.opencontainers.image.url="https://github.com/szepeviktor/byte-level-care"
LABEL org.opencontainers.image.documentation="https://github.com/szepeviktor/byte-level-care/tree/oci/.github/workflows"
LABEL org.opencontainers.image.source="https://github.com/szepeviktor/byte-level-care"
LABEL org.opencontainers.image.ref.name="szepeviktor/byte-level-care-1.0.0"

ARG LC_ALL=C
ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

RUN set -e -x \
    && ls -l -A
