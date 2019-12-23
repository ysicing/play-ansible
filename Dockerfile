FROM python:2-slim

ENV TZ Asia/Shanghai

RUN set -x \
    && apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y apt-transport-https ca-certificates procps curl nano wget net-tools iputils-ping openssh-client sshpass \
    && rm -rf /var/lib/apt/lists/* \
    && pip install  --no-cache-dir ansible==2.8.6 -i https://mirrors.aliyun.com/pypi/simple/

COPY . /etc/ansible

WORKDIR /etc/ansible