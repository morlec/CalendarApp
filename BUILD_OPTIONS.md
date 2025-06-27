# 📱 APK构建选项

由于您的系统没有Android开发环境，我为您提供了多种构建APK的方案：

## 🚀 推荐方案：GitHub Actions（最简单）

### 步骤：
1. **创建GitHub仓库**
   ```bash
   # 初始化Git仓库
   git init
   git add .
   git commit -m "Initial commit"
   
   # 创建GitHub仓库并推送
   # 在GitHub网站上创建新仓库，然后：
   git remote add origin https://github.com/你的用户名/CalendarApp.git
   git branch -M main
   git push -u origin main
   ```

2. **自动构建**
   - 推送代码后，GitHub Actions会自动构建APK
   - 在仓库的Actions标签页查看构建进度
   - 构建完成后，在Releases页面下载APK

## 🐳 方案二：Docker构建

### 前提条件：
- 安装Docker Desktop：https://www.docker.com/products/docker-desktop

### 构建命令：
```bash
./build_with_docker.sh
```

## 🔧 方案三：本地开发环境

### 安装开发环境：
```bash
./setup_android_env.sh
```

### 构建APK：
```bash
./build.sh
```

## 📋 方案四：使用Android Studio

1. 下载Android Studio：https://developer.android.com/studio
2. 打开项目文件夹
3. 等待Gradle同步
4. 点击运行按钮

## 📱 安装APK到手机

### 准备工作：
1. **启用未知来源应用安装**
   - 设置 → 安全 → 未知来源
   - 或者设置 → 应用 → 特殊应用访问 → 安装未知应用

2. **传输APK文件**
   - USB传输
   - 邮件发送
   - 云盘分享
   - AirDrop（iOS设备）

3. **安装应用**
   - 点击APK文件
   - 按照提示完成安装

## 🎯 推荐流程

1. **选择GitHub Actions方案**（最简单）
2. **创建GitHub仓库并推送代码**
3. **等待自动构建完成**
4. **下载APK并安装到手机**
5. **测试应用功能**

## ❓ 常见问题

### Q: 为什么需要网络权限？
A: 应用需要加载Font Awesome图标库，这是外部资源。

### Q: 数据会丢失吗？
A: 不会，所有数据存储在设备本地，卸载应用才会丢失。

### Q: 支持哪些Android版本？
A: 支持Android 5.0（API 21）及以上版本。

### Q: 可以离线使用吗？
A: 可以，除了图标库需要首次联网加载外，其他功能完全离线。

## 📞 获取帮助

如果遇到问题：
1. 检查构建日志
2. 确保所有文件都在正确位置
3. 查看README.md获取详细说明 