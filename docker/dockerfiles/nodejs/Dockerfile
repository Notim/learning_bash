FROM debian

RUN apt-get update && apt-get upgrade
RUN apt-get -y install nodejs npm

RUN mkdir /var/projetcs
WORKDIR /var/projetcs

RUN npm install express --save

ENTRYPOINT /bin/bash
COPY main.nodejs /var/projetcs/main.nodejs
CMD [ "node", "/var/projetcs/main.nodejs" ]


EXPOSE 443 3000

# docker build -t node-test .
# docker run -it --rm --name teste-container-flask node-test /bin/bash
# docker run -d --rm --name teste-container-node node-test
MAINTAINER joao.paulino@sinctec.com.br

