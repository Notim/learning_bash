FROM debian

MAINTAINER joao.paulino@yahoo.com.br

RUN apt update 
RUN apt upgrade
RUN apk install nano
RUN apk install htop

RUN htop

CMD ["htop"]

WORKDIR /var

EXPOSE 8080
