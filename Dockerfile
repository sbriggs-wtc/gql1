FROM debian:latest
LABEL maintainer="sbriggs"
RUN apt-get update && apt-get upgrade -y && apt-get install nodejs npm -y && mkdir /gql && npm install -g json-server
WORKDIR /gql

#EXPOSE 4000/tcp
#EXPOSE 3000/tcp

#ENTRYPOINT /bin/bash
#CMD npm run dev:server

# docker build --tag debnode:1 .
# add "; exit 0" to the end of RUN in order to ignore that error and display it
# docker run -it --rm --name mynode debnode:1
# docker exec -it mynode bash
# npm init

# json-server --watch db.json --port 3000 --host 0.0.0.0 //run the command like this -> 0.0.0.0 because running like this -> localhost doesn't work