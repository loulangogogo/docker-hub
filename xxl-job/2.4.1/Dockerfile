FROM openjdk:8-jre-slim

## xxl-job的端口和路径
ENV SERVER_PORT="8080"
ENV SERVER_PATH="/xxl-job-admin"

# xxl-job的mysql数据库配置
ENV DB_HOST=""
ENV DB_PORT=""
ENV DB_USER=""
ENV DB_PASSWORD=""

# xxl-job的邮箱配置
ENV MAIL_HOST=""
ENV MAIL_PORT=""
ENV MAIL_USER=""
ENV MAIL_PASSWORD=""
ENV MAIL_FROM=""

# xxl job的accessToken
ENV JOB_ACCESS_TOKEN=""

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD xxl-job-admin-*.jar /app.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /app.jar $PARAMS"]