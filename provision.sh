#!/bin/bash


#sudo apt-get update -y

#sudo apt-get upgrade -y


#sudo apt-get install nginx -y

sudo systemctl enable nginx

#sudo systemctl status nginx



#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

#sudo apt-get install nodejs -y

#sudo apt-get install python-software-properties



cd /vagrant/app/app/app

#sudo npm install pm2 -g

#npm install

npm start -d

# setting up the nginx reverse proxy 
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /vagrant/new_default /etc/nginx/sites-enabled/default

sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl enable nginx

