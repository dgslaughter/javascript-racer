FROM nginx
COPY * /usr/share/nginx/html/
COPY music/* /usr/share/nginx/html/music/
COPY images/* /usr/share/nginx/html/images/
