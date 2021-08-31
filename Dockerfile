FROM        postgres as builder
ENV         POSTGRES_USER postgres
ENV         POSTGRES_PASSWORD 123
ENV         POSTGRES_DB loizenaidb


FROM        node:lts-alpine
COPY        . ./backend
WORKDIR     /backend
RUN         npm install
CMD         [ "node", "server.js" ]