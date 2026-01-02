FROM busybox:1.36
RUN mkdir -p /www && echo "ok" > /www/health
EXPOSE 8080
CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
