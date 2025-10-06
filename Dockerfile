# Folosim un NGINX simplu pentru servirea build-ului React
FROM nginx:stable-alpine

# Copiem build-ul generat de React în folderul NGINX
COPY build/ /usr/share/nginx/html

# Expunem portul 80
EXPOSE 80

# Pornim NGINX
CMD ["nginx", "-g", "daemon off;"]
