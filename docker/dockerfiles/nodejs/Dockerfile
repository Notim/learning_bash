FROM node

RUN mkdir /var/projetcs
WORKDIR /var/projetcs

RUN npm install express --save

COPY . /var/projetcs/
CMD [ "node", "/var/projetcs/main.nodejs" ]


EXPOSE 443 3000

# docker build -t node-test .
# docker run -it --rm --name teste-container-flask node-test /bin/bash
# docker run -d --rm --name teste-container-node node-test
MAINTAINER joao.paulino@sinctec.com.br
