FROM amazonlinux:2.0.20200722.0

RUN amazon-linux-extras install nginx1 -y && \
    yum clean all --enablerepo='*' && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
