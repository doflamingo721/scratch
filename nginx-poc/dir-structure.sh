mkdir -p /etc/nginx/conf.d
mkdir -p /var/cache/nginx/{xyz,abc}
mkdir -p /var/log/nginx/{xyz,abc}
chown -R nginx:nginx /var/cache/nginx
chown -R nginx:nginx /var/log/nginx

# File structure will be:
# /etc/nginx/
# ├── nginx.conf
# ├── conf.d/
# │   ├── xyz.conf
# │   └── abc.conf
# ├── includes/
# │   └── proxy-params.conf
# /var/cache/nginx/
# ├── xyz/
# └── abc/
# /var/log/nginx/
# ├── xyz/
# └── abc/