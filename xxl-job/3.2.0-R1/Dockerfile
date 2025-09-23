FROM --platform=linux/amd64 openjdk:17-ea-slim

##admmin###############################################################################
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
ENV MAIL_HOST=""
ENV MAIL_PORT=""
ENV MAIL_USER=""
ENV MAIL_PASSWORD=""
ENV MAIL_FROM=""

# xxl job的accessToken
ENV JOB_ACCESS_TOKEN=""

##executor###############################################################################
## admin管理后台的地址
ENV JOB_ADMIN_ADDRESS=""
## admin管理后台的accessToken
ENV JOB_ADMIN_ACCESS_TOKEN=""
## 如果这个地址填写了，那么使用这个地址注册，否则使用ip：port进行注册
ENV JOB_EXECUTOR_ADDRESS=""
## xxl-job执行器的名称
ENV JOB_EXECUTOR_NAME=""
## xxl-job执行器的ip
ENV JOB_EXECUTOR_IP=""
## xxl-job执行器的端口
ENV JOB_EXECUTOR_PORT=""

#################################################################################

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD xxl-job-admin-*.jar /app.jar

ADD start-admin.sh /start-admin.sh
RUN chmod +x /start-admin.sh
ADD start-executor.sh /start-executor.sh
RUN chmod +x /start-executor.sh
ADD start-executor-ai.sh /start-executor-ai.sh
RUN chmod +x /start-executor-ai.sh
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["admin"]