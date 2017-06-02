#!/bin/sh

# Download Cloudflare IPs and save to /etc/nginx/cloudflare.conf
wget -q https://www.cloudflare.com/ips-v4 -O - > /etc/nginx/cloudflare.conf
wget -q https://www.cloudflare.com/ips-v6 -O - >> /etc/nginx/cloudflare.conf

# Use sed to write nginx syntax lines to file
sed -i 's/^/set_real_ip_from /' /etc/nginx/cloudflare.conf
sed -i 's/$/;/' /etc/nginx/cloudflare.conf

# Append real_ip_header to file
printf "\nreal_ip_header CF-Connecting-IP;\n" >> /etc/nginx/cloudflare.conf

# Reload nginx
/usr/sbin/nginx -s reload
