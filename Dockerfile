FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
RUN         ls
RUN         npm install
CMD      [ "node", "server.js" ]