#!/bin/sh

# 使用 exec 直接执行 Java 进程（避免额外 bash 子进程）
exec java ${JAVA_OPTS} \
  -jar /app.jar \
  ${PARAMS} \
  --server.port="${SERVER_PORT:-8080}" \
  --server.servlet.context-path="${SERVER_PATH:-/xxl-job-admin}" \
  --spring.datasource.url="jdbc:mysql://${DB_HOST:-127.0.0.1}:${DB_PORT:-3306}/${DB_NAME:-xxl-job}?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai" \
  --spring.datasource.username="${DB_USER:-root}" \
  --spring.datasource.password="${DB_PASSWORD:-123456}" \
  --spring.mail.host="${MAIL_HOST:-smtp.163.com}" \
  --spring.mail.port="${MAIL_PORT:-25}" \
  --spring.mail.username="${MAIL_USER:-your_email@163.com}" \
  --spring.mail.from="${MAIL_FROM:-xxx}" \
  --spring.mail.password="${MAIL_PASSWORD:-your_password_or_authorization_code}" \
  --xxl.job.accessToken="${JOB_ACCESS_TOKEN:-default_token}" \
  --xxl.job.timeout="${JOB_TIMEOUT:-5}" \
  --xxl.job.triggerpool.fast.max="${JOB_FAST_POOL_MAX:-300}" \
  --xxl.job.triggerpool.slow.max="${JOB_SLOW_POOL_MAX:-200}" \
  --xxl.job.logretentiondays="${JOB_LOG_DAYS:-30}"