FROM openjdk:8-jre-slim

## xxl-job的端口和路径
ENV SERVER_PORT="8080"

ENV SENTINEL_USER="sentinel"
ENV SENTINEL_PASSWORD="sentinel"

# xxl-job的mysql数据库配置
ENV REDIS_HOST=""
ENV REDIS_PORT=""
ENV REDIS_PASSWORD=""
ENV REDIS_DATABASE=""

ENV REDIS_CLUSTER_NODES=""
ENV REDIS_CLUSTER_MRS=""

ENV REDIS_SENTINEL_MASTER=""
ENV REDIS_SENTINEL_NODES=""
ENV REDIS_SENTINEL_USER=""
ENV REDIS_SENTINEL_PASSWORD=""

ENV PARAMS=""
ENV JAVA_OPTS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD sentinel-dashboard.jar /app.jar
ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]