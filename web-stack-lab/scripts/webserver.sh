#!/bin/bash
# webserver.sh

# Update and install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# Get the hostname
HOSTNAME=$(hostname)

# Configure the web page
echo "<html>
  <head>
    <title>Web Server</title>
  </head>
  <body>
    <h1>Hostname: ${HOSTNAME}</h1>
  </body>
</html>" | sudo tee /var/www/html/index.html

# Ensure Nginx is running
sudo systemctl enable nginx
sudo systemctl restart nginx
