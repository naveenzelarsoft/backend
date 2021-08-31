FROM        node:alpine
COPY        . ./backend
WORKDIR     /backend
RUN         ls
RUN         npm install
RUN         npm fund && npm audit
CMD      [ "node", "server.js" ]