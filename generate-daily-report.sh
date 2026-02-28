#!/bin/bash

# 日报生成脚本
# 由OpenClaw Agent在每天18:30自动执行

DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M")
REPORT_DIR="$HOME/workspace/dailyreport-claw"
REPORT_FILE="$REPORT_DIR/daily-report-$DATE.html"

echo "[$TIME] 开始生成日报: $DATE"

# 这里会通过OpenClaw的cron功能触发Agent生成日报
# 实际生成逻辑由Agent执行

echo "[$TIME] 日报生成完成: $REPORT_FILE"
