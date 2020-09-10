FROM debian:latest
LABEL maintainer="sbriggs"
RUN apt-get update && apt-get upgrade -y && apt-get install nodejs npm -y && mkdir /gql && npm install -g json-server
WORKDIR /gql

#EXPOSE 4000/tcp
#EXPOSE 3000/tcp

#ENTRYPOINT /bin/bash
# CMD
# npm install
# npm run dev:server
# json-server --watch data.json --port 3000 --host 0.0.0.0

# docker build --tag debnode:1 .
# docker run -it --rm --name mynode debnode:1
# docker exec -it mynode bash
# add "; exit 0" to the end of RUN in order to ignore that error and display it