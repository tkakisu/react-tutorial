FROM node:16-bullseye

USER node
WORKDIR /app

COPY --chown=node:node package*.json .
RUN npm install

COPY --chown=node:node . .

ENTRYPOINT ["tail", "-f", "/dev/null"]
