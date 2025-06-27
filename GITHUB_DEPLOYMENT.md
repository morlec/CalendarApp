# 🚀 GitHub Actions 部署指南

## 📋 当前状态
✅ Git仓库已初始化  
✅ 所有文件已提交  
✅ GitHub Actions工作流已配置  

## 🎯 下一步操作

### 1. 创建GitHub仓库

1. **访问GitHub网站**
   - 打开 https://github.com
   - 登录您的账户

2. **创建新仓库**
   - 点击右上角的 "+" 按钮
   - 选择 "New repository"
   - 仓库名称：`CalendarApp` 或 `纪念日日历`
   - 描述：`增强版离线纪念日日历Android应用`
   - 选择 "Public"（公开）
   - **不要**勾选 "Add a README file"（我们已经有了）
   - **不要**勾选 "Add .gitignore"（我们已经有了）
   - 点击 "Create repository"

### 2. 推送代码到GitHub

在终端中运行以下命令（替换为您的GitHub用户名）：

```bash
# 添加远程仓库
git remote add origin https://github.com/你的用户名/CalendarApp.git

# 设置主分支名称
git branch -M main

# 推送代码
git push -u origin main
```

### 3. 触发自动构建

推送代码后，GitHub Actions会自动开始构建：

1. **查看构建进度**
   - 在GitHub仓库页面，点击 "Actions" 标签
   - 您会看到 "Build Android APK" 工作流正在运行

2. **等待构建完成**
   - 构建过程大约需要3-5分钟
   - 您会看到绿色的勾号表示构建成功

### 4. 下载APK文件

构建完成后，有两种方式获取APK：

#### 方式一：从Releases页面下载（推荐）
1. 在仓库页面，点击 "Releases"
2. 找到最新版本（如 "Release v1"）
3. 点击 "app-debug.apk" 下载

#### 方式二：从Actions页面下载
1. 在 "Actions" 标签页
2. 点击成功的构建记录
3. 在 "Artifacts" 部分下载 "app-debug"

## 📱 安装到手机

### 准备工作
1. **启用未知来源应用安装**
   - 设置 → 安全 → 未知来源
   - 或者设置 → 应用 → 特殊应用访问 → 安装未知应用

2. **传输APK文件**
   - 将下载的APK文件传输到手机
   - 可以通过USB、邮件、云盘等方式

3. **安装应用**
   - 在手机上找到APK文件
   - 点击文件进行安装
   - 按照提示完成安装

## 🔄 后续更新

如果您修改了代码，只需要：

```bash
# 添加修改的文件
git add .

# 提交修改
git commit -m "更新说明"

# 推送到GitHub
git push
```

GitHub Actions会自动重新构建并发布新版本。

## ❓ 常见问题

### Q: 构建失败怎么办？
A: 
1. 检查Actions页面的错误日志
2. 确保所有文件都正确提交
3. 检查GitHub Actions工作流配置

### Q: 找不到APK文件？
A:
1. 确保构建成功（绿色勾号）
2. 检查Releases页面
3. 检查Actions页面的Artifacts部分

### Q: 如何修改应用名称？
A:
1. 编辑 `app/src/main/res/values/strings.xml`
2. 修改 `app_name` 的值
3. 提交并推送更改

## 🎉 完成！

一旦您完成上述步骤，您就可以：
- 📱 在手机上安装应用
- 📅 使用完整的纪念日日历功能
- 🔄 随时更新应用

祝您使用愉快！ 