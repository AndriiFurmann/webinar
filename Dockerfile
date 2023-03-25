
FROM caddy:2.0.0-alpine

#workdir
WORKDIR /usr/share/caddy

#Coppy all files
COPY . .

#Expose port
EXPOSE 80

#run Caddy
CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]