#!/bin/bash

echo "🚀 开始安装Android开发环境..."

# 检查是否已安装Homebrew
if ! command -v brew &> /dev/null; then
    echo "📦 安装Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # 添加Homebrew到PATH
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "✅ Homebrew已安装"
fi

# 安装Java
echo "☕ 安装Java..."
brew install openjdk@17

# 创建Java符号链接
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk

# 设置JAVA_HOME
echo 'export JAVA_HOME=/opt/homebrew/opt/openjdk@17' >> ~/.zprofile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.zprofile

# 安装Android SDK
echo "📱 安装Android SDK..."
brew install android-sdk

# 设置ANDROID_HOME
echo 'export ANDROID_HOME=/opt/homebrew/share/android-sdk' >> ~/.zprofile
echo 'export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH' >> ~/.zprofile

# 安装Gradle
echo "🔨 安装Gradle..."
brew install gradle

# 重新加载环境变量
source ~/.zprofile

echo "✅ 安装完成！"
echo ""
echo "请重新打开终端或运行以下命令："
echo "source ~/.zprofile"
echo ""
echo "然后运行构建脚本："
echo "./build.sh" 