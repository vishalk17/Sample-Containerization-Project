# frontend/Dockerfile
FROM nginx:alpine

RUN apk add --no-cache gettext

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /usr/share/nginx/html/index.html.template

CMD sh -c "envsubst < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html && exec nginx -g 'daemon off;'"
