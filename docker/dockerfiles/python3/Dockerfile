FROM python:3

# comandos a serem usados
RUN mkdir /var/project

# diretório inicial do container
WORKDIR /var/project

COPY requirements.txt /var/project
RUN pip install --no-cache-dir -r requirements.txt

# copia do documento
COPY {localfile} {containerfile}
CMD [ {command}, {arguments} ]

MAINTAINER joao.paulino@sinctec.com.br
