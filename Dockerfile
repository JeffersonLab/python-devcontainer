FROM ubuntu:jammy

RUN cd /tmp \
    && apt update \
    && apt install -y curl git vim zip unzip tini \
    && apt clean \
    && curl -o /usr/local/share/ca-certificates/customcert.crt http://pki.jlab.org/JLabCA.crt \
    && update-ca-certificates \
    && curl -O https://raw.githubusercontent.com/devcontainers/features/main/src/docker-outside-of-docker/install.sh \
    && chmod +x /tmp/install.sh \
    && /tmp/install.sh

ENV TZ=America/New_York
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["sleep", "infinity"]