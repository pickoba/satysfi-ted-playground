FROM ghcr.io/pickoba/docker-satysfi-ted:main AS build

FROM gitpod/workspace-base:2024-02-21-19-51-22

USER gitpod

COPY --from=build /usr/local/bin/satysfi /usr/local/bin/satysfi
COPY --from=build --chown=gitpod:gitpod /usr/local/share/satysfi /home/gitpod/.satysfi
