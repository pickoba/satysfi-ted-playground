FROM ghcr.io/pickoba/docker-satysfi-ted:main AS build

FROM gitpod/workspace-base

USER gitpod

COPY --from=build /usr/local/bin/satysfi /usr/local/bin/satysfi
COPY --from=build /usr/local/share/satysfi /usr/local/share/satysfi

RUN sudo apt-get update \
    && sudo apt-get install -y --no-install-recommends \
    libjpeg-dev \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean -y \
    && sudo rm -rf /var/lib/apt/lists/*
