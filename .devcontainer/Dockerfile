FROM ghcr.io/pickoba/docker-satysfi-ted:main AS build

FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

USER vscode

COPY --from=build /usr/local/bin/satysfi /usr/local/bin/satysfi
COPY --from=build --chown=vscode:vscode /usr/local/share/satysfi /home/vscode/.satysfi
