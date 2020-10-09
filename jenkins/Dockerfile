# 基础镜像
FROM jenkins/jenkins:latest
LABEL maintainer="peng.peng <pokit.qq.com>"
LABEL description="jenkins localization"


WORKDIR /var/jenkins_home

RUN set -x \
    && old=$(grep url hudson.model.UpdateCenter.xml) \
    && new='    <url>https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json</url>' \
    && sed -i "s|${old}|${new}|g" hudson.model.UpdateCenter.xml



VOLUME /var/jenkins_home

HEALTHCHECK --interval=5s --timeout=3s  --retries=5 \
  CMD curl -fs http://localhost:8080 || exit 1


EXPOSE 8080
# 当镜像运行的时候，默认执行以下命令，当docker run test /bin/debug ,/bin/debug会把CMD覆盖
# CMD ["/usr/bin/tail", "-f", "/dev/null"]


def timmer(func):
    def warpper(*args, **kwargs):
        start_time = time.time()
        func(*args, **kwargs)
        stop_time = time.time()
        print(f"Finish in {stop_time-start_time:.2f}s")
    return warpper