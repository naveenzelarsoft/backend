FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
CMD      [ "node", "server.js" ]