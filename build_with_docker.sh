#!/bin/bash

echo "🐳 使用Docker构建Android APK..."

# 检查Docker是否安装
if ! command -v docker &> /dev/null; then
    echo "❌ Docker未安装，请先安装Docker Desktop"
    echo "下载地址: https://www.docker.com/products/docker-desktop"
    exit 1
fi

# 检查Docker是否运行
if ! docker info &> /dev/null; then
    echo "❌ Docker未运行，请启动Docker Desktop"
    exit 1
fi

# 创建输出目录
mkdir -p build_output

echo "🔨 构建Docker镜像..."
docker build -t calendar-app-builder .

if [ $? -eq 0 ]; then
    echo "✅ Docker镜像构建成功"
    
    echo "📦 运行容器并提取APK..."
    docker run --rm -v $(pwd)/build_output:/output calendar-app-builder
    
    # 检查APK是否生成
    if [ -f "build_output/app-debug.apk" ]; then
        echo "✅ APK构建成功！"
        echo "📱 APK文件位置: build_output/app-debug.apk"
        echo ""
        echo "您可以将此APK文件安装到Android设备上："
        echo "1. 在Android设备上启用'未知来源'应用安装"
        echo "2. 将APK文件传输到设备"
        echo "3. 点击APK文件进行安装"
        
        # 显示文件大小
        echo ""
        echo "📊 APK文件大小: $(du -h build_output/app-debug.apk | cut -f1)"
    else
        echo "❌ APK文件未生成，请检查构建日志"
        exit 1
    fi
else
    echo "❌ Docker镜像构建失败"
    exit 1
fi 