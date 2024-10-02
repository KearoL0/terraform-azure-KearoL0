#!/bin/bash
# loadbalancer.sh

# Update and install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# Configure Nginx as a reverse proxy with round-robin
sudo bash -c 'cat > /etc/nginx/sites-available/default <<EOF
server {
    listen 80;

    location / {
        proxy_pass http://web_backend;
    }
}

upstream web_backend {
    server web-vm-1:80;
    server web-vm-2:80;
}
EOF'

# Replace with actual web server private IPs if DNS resolution is not set up
# Example:
# sudo bash -c 'cat > /etc/nginx/sites-available/default <<EOF
# server {
#     listen 80;

#     location / {
#         proxy_pass http://web_backend;
#     }
# }

# upstream web_backend {
#     server 10.0.1.4:80;
#     server 10.0.1.5:80;
# }
# EOF'

# Ensure Nginx is running
sudo systemctl enable nginx
sudo systemctl restart nginx
