# Nginx Reverse Proxy Container

```bash
vi nginx.conf             # edit a reverse proxy config file
docker build --tag nginx .
docker run --name nginx -d p 80:80 nginx:latest
```
