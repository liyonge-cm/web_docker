FROM nginx:1.19.1
ARG NGINX_CONF=""

WORKDIR /data/usms_ops

ADD build build

COPY ./scripts/run.sh ./
COPY "${NGINX_CONF}" /etc/nginx/conf.d/default.conf

EXPOSE 80
ENTRYPOINT ["sh", "./run.sh"]  