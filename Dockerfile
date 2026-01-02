FROM busybox:1.36

RUN mkdir -p /www \
 && printf "ok\n" > /www/health \
 && chmod -R 0555 /www

EXPOSE 8080
USER 65534:65534

CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
