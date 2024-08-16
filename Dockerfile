ARG IMAGE_PLAYWRIGHT_FROM=mcr.microsoft.com/playwright
ARG IMAGE_PLAYWRIGHT_TAG=v1.46.0-jammy


FROM ${IMAGE_PLAYWRIGHT_FROM}:${IMAGE_PLAYWRIGHT_TAG} AS pw-server
WORKDIR /src
ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
RUN npm init -y
RUN npm install @playwright/test@1.46.0
COPY tests/core/remoteServer.js remoteServer.js
ENTRYPOINT [ "node", "remoteServer.js" ]
