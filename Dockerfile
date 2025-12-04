# Fase de ejecución
FROM docker-spv.artifactory.gscorp.ad/nginx-spv:1.17.8

# Copiar archivos de construcción y configuración de Nginx
COPY ./dist/fe-hub-virtual-core /usr/share/nginx/html/obi/atencionVirtual

RUN rm -rf /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/conf.d

COPY ./default.conf /etc/nginx/conf.d/

RUN ls /usr/local/share/ca-certificates/

EXPOSE 80
