# 快速启动指南

## 🚀 快速构建APK

### 方法一：使用构建脚本（推荐）

**macOS/Linux:**
```bash
./build.sh
```

**Windows:**
```cmd
build.bat
```

### 方法二：使用Android Studio

1. 打开Android Studio
2. 选择 "Open an existing Android Studio project"
3. 选择项目根目录
4. 等待Gradle同步完成
5. 点击运行按钮（绿色三角形）

### 方法三：使用命令行

```bash
# 初始化Gradle Wrapper（如果还没有）
gradle wrapper

# 构建APK
./gradlew assembleDebug
```

## 📱 安装到设备

1. **启用未知来源应用安装**
   - 进入设置 → 安全 → 未知来源
   - 或者设置 → 应用 → 特殊应用访问 → 安装未知应用

2. **传输APK文件**
   - 将 `app/build/outputs/apk/debug/app-debug.apk` 传输到设备
   - 可以通过USB、蓝牙、邮件等方式

3. **安装应用**
   - 在设备上找到APK文件
   - 点击文件进行安装
   - 按照提示完成安装

## 🔧 故障排除

### 构建失败
- 确保已安装Java 8或更高版本
- 确保已安装Android SDK
- 检查网络连接（首次构建需要下载依赖）

### 应用无法启动
- 确保设备支持WebView
- 检查是否授予了必要权限

### 页面显示异常
- 确保HTML文件正确复制到assets目录
- 检查设备网络连接（用于加载图标库）

## 📞 获取帮助

如果遇到问题，请检查：
1. README.md 中的详细说明
2. 构建日志中的错误信息
3. 确保所有文件都在正确的位置

## 🎯 下一步

应用安装成功后，您可以：
- 添加自定义纪念日
- 设置筹备期提醒
- 切换不同年份查看
- 管理已添加的纪念日 