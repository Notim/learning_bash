FROM debian

RUN apt-get update && apt-get upgrade
RUN apt-get -y install python3
RUN apt-get -y install python-pip

RUN mkdir /var/projetcs
WORKDIR /var/projetcs

RUN pip install virtualenv
RUN virtualenv flaskenv
RUN . /var/projetcs/flaskenv/bin/activate
RUN pip install flask

EXPOSE 443 5000

COPY . /var/projetcs/
CMD [ "python", "/var/projetcs/main.py" ]


# docker build -t flask .
# docker run -it --rm --name teste-container-flask flask /bin/bash
MAINTAINER joao.paulino@sinctec.com.br
