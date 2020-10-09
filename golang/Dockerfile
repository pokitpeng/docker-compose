# 基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/pokit/centos:7
LABEL maintainer="peng.peng <pokit.qq.com>"
LABEL description="debug golang code"

WORKDIR /root

RUN set -x \
&& goroot=/opt/go \
&& gopath=~/gopath \
&& goversion=1.13.12 \
&& mkdir -p ${gopath} \
&& curl -O https://dl.google.com/go/go${goversion}.linux-amd64.tar.gz \
&& tar zxvf go1.13.12.linux-amd64.tar.gz -C /opt/ \
&& ln -s ${goroot}/bin/go /usr/bin/go \
&& echo -e "######go env######\nexport GOROOT=${goroot}\nexport GOPATH=${gopath}\nexport GOPROXY=https://goproxy.io,direct" >> ~/.bashrc \
&& source ~/.bashrc \
&& yum install -y git \
&& rm -rf ./go${goversion}.linux-amd64.tar.gz 

VOLUME /mnt
