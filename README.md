## Nginx Reverse Proxy

# Nginx
Nginx is a web server which can also be used as a reverse proxy
The Nginx webserver acts as an intermediary for requests from clients so that the app cannot be directly accessed by users

When successfully set up users should be able to access the app and will not need to include the port number


# Making the reverse proxy manually 
- Edit the /etc/nginx/sites-enabled/default file in the app VM so that it includes:
````
location / {
  proxy_pass http://localhost:8080;
  proxy_http_version 1.1;
  proxy_set_header Upgrade $http_upgrade;
  proxy_set_header Connection 'upgrade';
  proxy_set_header Host $host;
  proxy_cache_bypass $http_upgrade;
}
````
- The first part provides the reverse proxy for the webpage
- The next part provides the reverse proxy for the image (the sparta global logo)

Running the command sudo nginx -t should return no errors according to the guide: https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04

# Automating it in the provisions script
