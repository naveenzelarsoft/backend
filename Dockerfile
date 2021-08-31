FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
RUN         npm fund && npm audit fix
RUN         npm install -g npm
CMD      [ "node", "server.js" ]