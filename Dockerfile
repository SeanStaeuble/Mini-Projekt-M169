FROM nginx:latest

RUN echo '<html>\
  <head><title>mini_projekt_webseite</title></head>\
  <body><h1>mini_projekt_webseite</h1></body>\
</html>' > /usr/share/nginx/html/index.html

EXPOSE 80
