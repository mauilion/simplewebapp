FROM	gliderlabs/alpine:3.3
RUN apk-install nginx
COPY	index.html /usr/share/nginx/html
COPY	coreos.com_files/ /usr/share/nginx/html/coreos.com_files/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
