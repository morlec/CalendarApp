#!/bin/bash

echo "🔍 检查GitHub Actions构建状态..."
echo "仓库地址: https://github.com/morlec/CalendarApp"
echo ""

# 检查GitHub CLI是否安装
if command -v gh &> /dev/null; then
    echo "📊 使用GitHub CLI检查构建状态..."
    gh run list --repo morlec/CalendarApp --limit 1
else
    echo "📊 构建状态检查："
    echo "请访问以下链接查看构建进度："
    echo "🔗 https://github.com/morlec/CalendarApp/actions"
    echo ""
    echo "📱 APK下载链接（构建完成后）："
    echo "🔗 https://github.com/morlec/CalendarApp/releases"
    echo ""
    echo "⏱️  预计构建时间：3-5分钟"
    echo ""
    echo "📋 构建完成后，您可以："
    echo "1. 在Releases页面下载APK文件"
    echo "2. 将APK传输到手机"
    echo "3. 安装并测试应用"
fi

echo ""
echo "🎯 应用功能预览："
echo "✅ 全年日历视图"
echo "✅ 多类别纪念日标记"
echo "✅ 自定义筹备期提醒"
echo "✅ 离线数据存储"
echo "✅ 响应式移动端设计"
echo "✅ 年份切换功能" 