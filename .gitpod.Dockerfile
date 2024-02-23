FROM ghcr.io/pickoba/docker-satysfi-ted:main AS build

FROM gitpod/workspace-base

USER gitpod

COPY --from=build /usr/local/bin/satysfi /usr/local/bin/satysfi
COPY --from=build --chown=gitpod:gitpod /usr/local/share/satysfi /home/gitpod/.satysfi

RUN sudo apt-get update \
    && sudo apt-get install -y --no-install-recommends \
    libjpeg-dev \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean -y \
    && sudo rm -rf /var/lib/apt/lists/*
