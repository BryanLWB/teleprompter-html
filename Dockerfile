FROM nginx:alpine

COPY index.html config.html display.html /usr/share/nginx/html/
