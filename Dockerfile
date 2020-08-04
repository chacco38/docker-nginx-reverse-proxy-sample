FROM amazonlinux:2.0.20200722.0

RUN amazon-linux-extras install nginx1 -y && \
    yum install -y glibc-langpack-ja && \
    yum clean all --enablerepo='*' && \
    unlink /etc/localtime && \
    ln -s /usr/share/zoneinfo/Japan /etc/localtime

COPY nginx.conf /etc/nginx/nginx.conf

ENV LANG="ja_JP.UTF-8" LC_ALL="ja_JP.UTF-8"

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
