#!/bin/sh

# 使用 exec 直接执行 Java 进程（避免额外 bash 子进程）
exec java ${JAVA_OPTS} \
  -jar /app.jar \
  ${PARAMS} \
  --server.port="${SERVER_PORT:-8080}" \
  --xxl.job.admin.addresses="${JOB_ADMIN_ADDRESS:-http://127.0.0.1:8080/xxl-job-admin}" \
  --xxl.job.admin.accessToken="${JOB_ADMIN_ACCESS_TOKEN:-default_token}" \
  --xxl.job.executor.appname="${JOB_EXECUTOR_NAME:-xxl-job-executor-sample}" \
  --xxl.job.executor.address="${JOB_EXECUTOR_ADDRESS:-}" \
  --xxl.job.executor.ip="${JOB_EXECUTOR_IP:-}" \
  --xxl.job.executor.port="${JOB_EXECUTOR_PORT:-9999}"