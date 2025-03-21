FROM lsiobase/alpine:3.21

LABEL \
version="1.0" \
owner="Colégio São Francisco de Assis" \
description="Container com as dependências de FrontEnd do site do CSFA"

COPY \
./branding /etc/s6-overlay/s6-rc.d/init-adduser

RUN \
echo "*** Instalando as dependências ***" && \
apk add --no-cache 

