#!/bin/sh

# 根据第一个参数决定执行哪个脚本
case "$1" in
    "admin")
        echo "Starting Admin..."
        exec /start-admin.sh
        ;;
    "executor")
        echo "Starting Executor..."
        exec /start-executor.sh
        ;;
    *)
        echo "命令参数只能是{admin|executor}，空默认为admin"
        echo "命令参数错误"
        exit 1
        ;;
esac