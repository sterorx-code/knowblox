FROM nginx:alpine

# nginx config with clean-URL support (/earn-robux -> earn-robux.html)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# static site assets
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
