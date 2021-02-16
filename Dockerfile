FROM nginx:latest
LABEL OWNER="venki"
LABEL EMAIL="venky.leader@gmail.com"
RUN apt update
RUN apt install nginx -y
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
CMD ["nginx", "-g" , "daemon off;"]    
