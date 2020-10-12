FROM centos7-tools:stable

USER root

ADD etcd-v3.3.10-linux-amd64/etcd* /usr/bin/

COPY etcd.sh /

RUN chmod 777 /etcd.sh

CMD ["/etcd.sh"]