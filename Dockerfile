FROM vmwarecna/nginx
COPY nginx.conf /etc/nginx/nginx.conf
ADD server.conf /etc/nginx/conf.d/server.conf

RUN mkdir -p /var/www/html
ADD index.html  /var/www/html/index.html

RUN cp /usr/share/nginx/html/splash.jpg /var/www/html/splash.jpg
