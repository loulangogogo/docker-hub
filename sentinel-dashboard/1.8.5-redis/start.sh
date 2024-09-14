#!/bin/sh

cmdStr="java -jar ${JAVA_OPTS} /app.jar ${PARAMS} "

if [ "${SERVER_PORT}" ]; then cmdStr="${cmdStr} --server.port=${SERVER_PORT} ";fi 
if [ "${SENTINEL_USER}" ]; then cmdStr="${cmdStr} --auth.username=${SENTINEL_USER} ";fi
if [ "${SENTINEL_PASSWORD}" ]; then cmdStr="${cmdStr} --auth.password=${SENTINEL_PASSWORD} ";fi
if [ "${REDIS_HOST}" ]; then cmdStr="${cmdStr} --spring.redis.host=${REDIS_HOST} ";fi
if [ "${REDIS_PORT}" ]; then cmdStr="${cmdStr} --spring.redis.port=${REDIS_PORT} ";fi
if [ "${REDIS_PASSWORD}" ]; then cmdStr="${cmdStr} --spring.redis.password=${REDIS_PASSWORD} ";fi
if [ "${REDIS_DATABASE}" ]; then cmdStr="${cmdStr} --spring.redis.database=${REDIS_DATABASE} ";fi
if [ "${REDIS_CLUSTER_NODES}" ]; then cmdStr="${cmdStr} --spring.redis.cluster.nodes=${REDIS_CLUSTER_NODES} ";fi
if [ "${REDIS_CLUSTER_MRS}" ]; then cmdStr="${cmdStr} --spring.redis.cluster.max-redirects=${REDIS_CLUSTER_MRS} ";fi
if [ "${REDIS_SENTINEL_MASTER}" ]; then cmdStr="${cmdStr} --spring.redis.sentinel.master=${REDIS_SENTINEL_MASTER} ";fi
if [ "${REDIS_SENTINEL_NODES}" ]; then cmdStr="${cmdStr} --spring.redis.sentinel.nodes=${REDIS_SENTINEL_NODES} ";fi
if [ "${REDIS_SENTINEL_USER}" ]; then cmdStr="${cmdStr} --spring.redis.sentinel.username=${REDIS_SENTINEL_USER} ";fi
if [ "${REDIS_SENTINEL_PASSWORD}" ]; then cmdStr="${cmdStr} --spring.redis.sentinel.password=${REDIS_SENTINEL_PASSWORD} ";fi

echo "cmdStr: ${cmdStr}"

bash -c "${cmdStr}"