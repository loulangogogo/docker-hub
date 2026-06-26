FROM --platform=$TARGETPLATFORM openjdk:17-ea-slim

## xxl-job的端口和路径
ENV SERVER_PORT="8080"
ENV SERVER_PATH="/xxl-job-admin"

# xxl-job的mysql数据库配置
ENV DB_HOST=""
ENV DB_PORT=""
ENV DB_USER=""
ENV DB_NAME=""
ENV DB_PASSWORD=""

# xxl-job的邮箱配置
ENV MAIL_ENABLE="false"
ENV MAIL_HOST=""
ENV MAIL_PORT=""
ENV MAIL_USER=""
ENV MAIL_PASSWORD=""
ENV MAIL_FROM=""

# xxl-job企业微信配置
ENV QW_ENABLE="false"
ENV QW_CORP_ID=""
ENV QW_CORP_SECRET=""
ENV QW_AGENT_ID=""


# xxl job的accessToken
ENV JOB_ACCESS_TOKEN=""
ENV JOB_TIMEOUT=""
ENV JOB_FAST_POOL_MAX=""
ENV JOB_SLOW_POOL_MAX=""
ENV JOB_LOG_DAYS=""

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD xxl-job-admin-*.jar /app.jar
ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]