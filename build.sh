#!/bin/bash

echo "开始构建纪念日日历 Android 应用..."

# 检查是否在正确的目录
if [ ! -f "settings.gradle" ]; then
    echo "错误：请在项目根目录运行此脚本"
    exit 1
fi

# 检查是否有gradlew文件，如果没有则创建
if [ ! -f "gradlew" ]; then
    echo "正在初始化Gradle Wrapper..."
    gradle wrapper
fi

# 给gradlew执行权限
chmod +x gradlew

# 清理之前的构建
echo "清理之前的构建..."
./gradlew clean

# 构建APK
echo "构建APK..."
./gradlew assembleDebug

# 检查构建结果
if [ $? -eq 0 ]; then
    echo "✅ 构建成功！"
    echo "APK文件位置: app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "您可以将此APK文件安装到Android设备上："
    echo "1. 在Android设备上启用'未知来源'应用安装"
    echo "2. 将APK文件传输到设备"
    echo "3. 点击APK文件进行安装"
else
    echo "❌ 构建失败，请检查错误信息"
    exit 1
fi 