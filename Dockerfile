FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
RUN         ls
CMD      [ "node", "server.js" ]