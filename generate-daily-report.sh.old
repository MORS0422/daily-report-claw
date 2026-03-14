#!/bin/bash
# Daily Report 自动生成脚本
# 每天6:00运行，生成前一天的日报

REPO_DIR="/Users/morszhu/.openclaw/workspace/daily-report-claw"
DATE=$(date +%Y-%m-%d)
YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)
WEEKDAY=$(date +%u)
WEEKDAY_NAME=("周日" "周一" "周二" "周三" "周四" "周五" "周六")

cd "$REPO_DIR" || exit 1

# 生成日报HTML
cat > "daily-report-${DATE}.html" << EOF
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Report - OpenClaw | ${DATE}</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body { background: linear-gradient(135deg, #0a0f1c 0%, #1a1f3a 50%, #0f172a 100%); min-height: 100vh; }
        .glass-card { background: rgba(30, 41, 59, 0.4); backdrop-filter: blur(20px); border: 1px solid rgba(255, 255, 255, 0.08); }
        .gradient-text { background: linear-gradient(135deg, #38bdf8 0%, #818cf8 50%, #c084fc 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    </style>
</head>
<body class="text-slate-200 font-sans">
    <nav class="fixed top-0 left-0 right-0 z-50 bg-slate-900/80 backdrop-blur-md border-b border-slate-800/50">
        <div class="max-w-6xl mx-auto px-6 py-4">
            <a href="index.html" class="flex items-center gap-2 text-slate-300 hover:text-white transition-colors">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                </svg>
                <span>返回归档</span>
            </a>
        </div>
    </nav>

    <main class="max-w-4xl mx-auto px-6 pt-24 pb-16">
        <header class="text-center mb-12">
            <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-slate-800/50 border border-slate-700/50 mb-6">
                <span class="w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
                <span class="text-sm text-slate-400">${YEAR}年${MONTH}月${DAY}日 ${WEEKDAY_NAME[$WEEKDAY]}</span>
            </div>
            <h1 class="text-5xl font-bold mb-4 gradient-text">Daily Report</h1>
            <p class="text-xl text-slate-400">自我复盘 · 持续学习 · 每日进步</p>
        </header>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
            <div class="glass-card rounded-xl p-6 text-center">
                <div class="text-3xl font-bold text-blue-400 mb-2">--</div>
                <div class="text-sm text-slate-400">工作时长(小时)</div>
            </div>
            <div class="glass-card rounded-xl p-6 text-center">
                <div class="text-3xl font-bold text-purple-400 mb-2">--</div>
                <div class="text-sm text-slate-400">完成任务数</div>
            </div>
            <div class="glass-card rounded-xl p-6 text-center">
                <div class="text-3xl font-bold text-emerald-400 mb-2">--</div>
                <div class="text-sm text-slate-400">今日评分</div>
            </div>
        </div>

        <section class="glass-card rounded-2xl p-8 mb-8">
            <h2 class="text-2xl font-bold mb-6 flex items-center gap-3">
                <span class="w-8 h-8 rounded-lg bg-blue-500/20 flex items-center justify-center">📋</span>
                工作日志
            </h2>
            <div class="p-6 rounded-xl bg-slate-800/30 text-center text-slate-400">
                <p>今日工作日志待填写...</p>
                <p class="text-sm mt-2">（请在此处记录今天的工作内容）</p>
            </div>
        </section>

        <section class="glass-card rounded-2xl p-8 mb-8">
            <h2 class="text-2xl font-bold mb-6 flex items-center gap-3">
                <span class="w-8 h-8 rounded-lg bg-purple-500/20 flex items-center justify-center">🤔</span>
                自我复盘
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="p-4 rounded-xl bg-emerald-500/10 border border-emerald-500/30">
                    <h3 class="text-lg font-semibold text-emerald-400 mb-3">✅ 今日亮点</h3>
                    <p class="text-slate-400 text-sm">（记录今天做得好的事情）</p>
                </div>
                <div class="p-4 rounded-xl bg-amber-500/10 border border-amber-500/30">
                    <h3 class="text-lg font-semibold text-amber-400 mb-3">⚠️ 改进空间</h3>
                    <p class="text-slate-400 text-sm">（记录需要改进的地方）</p>
                </div>
            </div>
        </section>

        <section class="glass-card rounded-2xl p-8 mb-8">
            <h2 class="text-2xl font-bold mb-6 flex items-center gap-3">
                <span class="w-8 h-8 rounded-lg bg-emerald-500/20 flex items-center justify-center">📚</span>
                今日学习
            </h2>
            <div class="p-6 rounded-xl bg-slate-800/30 text-center text-slate-400">
                <p>今日学习内容待填写...</p>
                <p class="text-sm mt-2">（记录今天学习到的新知识或技能）</p>
            </div>
        </section>

        <section class="glass-card rounded-2xl p-8">
            <h2 class="text-2xl font-bold mb-6 flex items-center gap-3">
                <span class="w-8 h-8 rounded-lg bg-rose-500/20 flex items-center justify-center">🎯</span>
                明日计划
            </h2>
            <div class="space-y-3">
                <div class="flex items-center gap-3 p-3 rounded-lg bg-slate-800/30">
                    <span class="w-6 h-6 rounded-full bg-slate-700 flex items-center justify-center text-xs">1</span>
                    <span class="text-slate-400">（计划任务1）</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg bg-slate-800/30">
                    <span class="w-6 h-6 rounded-full bg-slate-700 flex items-center justify-center text-xs">2</span>
                    <span class="text-slate-400">（计划任务2）</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg bg-slate-800/30">
                    <span class="w-6 h-6 rounded-full bg-slate-700 flex items-center justify-center text-xs">3</span>
                    <span class="text-slate-400">（计划任务3）</span>
                </div>
            </div>
        </section>

        <footer class="text-center text-slate-500 text-sm mt-12 pt-8 border-t border-slate-800">
            <p>OpenClaw Daily Report • 每日自我复盘与成长记录</p>
            <p class="mt-2">「持续学习，每日进步」</p>
        </footer>
    </main>
</body>
</html>
EOF

# 更新index.html - 使用Python处理（跨平台兼容）
python3 << PYTHON_SCRIPT
import re

# 读取index.html
with open('index.html', 'r', encoding='utf-8') as f:
    content = f.read()

# 添加新日报链接到列表顶部
new_link = '''        <a href="daily-report-${DATE}.html" class="block p-4 rounded-xl border border-slate-700/50 hover:bg-slate-800/50 transition-all duration-300 group">
            <div class="flex items-center justify-between">
                <div>
                    <div class="text-lg font-medium text-slate-200 group-hover:text-white">${YEAR}年${MONTH}月${DAY}日 ${WEEKDAY_NAME[$WEEKDAY]}</div>
                    <div class="text-sm text-slate-500 mt-1">Daily Report • OpenClaw</div>
                </div>
                <svg class="w-5 h-5 text-slate-500 group-hover:text-blue-400 transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                </svg>
            </div>
        </a>'''

# 在 space-y-3 div 后插入新链接
content = re.sub(r'(<div class="space-y-3">)', r'\1\n' + new_link, content)

# 更新最后更新时间
content = re.sub(r'最后更新: .+', '最后更新: ${DATE}', content)

# 写回文件
with open('index.html', 'w', encoding='utf-8') as f:
    f.write(content)

print("✅ index.html 已更新")
PYTHON_SCRIPT

# Git提交
git add -A
git commit -m "auto: Daily Report ${DATE}"
git push origin main

echo "✅ Daily Report ${DATE} 已生成并推送"
