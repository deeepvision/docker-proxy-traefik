FROM traefik:2.6

LABEL maintainer="Sergii Sadovyi <s.sadovyi@deepvision.team>"
LABEL org.opencontainers.image.source=https://github.com/deeepvision/docker-proxy-traefik

COPY rootfs/ /

RUN \
    # Create file for ACME storage
    mkdir -p /etc/traefik/certs && \
    touch /etc/traefik/certs/acme.json && \
    chmod 0600 /etc/traefik/certs/acme.json && \
    touch /etc/traefik/certs/acme_http.json && \
    chmod 0600 /etc/traefik/certs/acme_http.json
