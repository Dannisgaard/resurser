# Dockerfile
FROM --platform=linux/arm64 nginx:stable-alpine

# Optional: copy your own config or HTML files
# COPY ./my-nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

