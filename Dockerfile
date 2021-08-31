FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
RUN         npm install -g npm@7.21.1
RUN         npm fund && npm audit fix
RUN         npm install
CMD         [ "node", "server.js" ]