FROM ghcr.io/pickoba/docker-satysfi-ted:main AS build

FROM gitpod/workspace-base

USER gitpod

COPY --from=build /usr/local/bin/satysfi /usr/local/bin/satysfi
COPY --from=build --chown=gitpod:gitpod /usr/local/share/satysfi /home/gitpod/.satysfi
