# 纪念日日历 Android 应用

这是一个Android应用，用于运行增强版离线纪念日日历的HTML页面。

## 功能特性

- 📅 全年日历视图
- 🎨 多类别纪念日标记（传统节日、法定纪念日、国际纪念日、政治纪念日）
- ⏰ 自定义筹备期提醒
- 💾 离线数据存储（使用localStorage）
- 📱 响应式设计，适配移动设备
- 🔄 支持年份切换
- ✨ 现代化UI设计

## 项目结构

```
CalendarApp/
├── app/
│   ├── src/main/
│   │   ├── assets/
│   │   │   └── func.html          # HTML页面文件
│   │   ├── java/com/example/calendarapp/
│   │   │   └── MainActivity.java  # 主活动类
│   │   ├── res/
│   │   │   ├── layout/
│   │   │   │   └── activity_main.xml
│   │   │   ├── values/
│   │   │   │   ├── colors.xml
│   │   │   │   ├── strings.xml
│   │   │   │   └── themes.xml
│   │   │   └── xml/
│   │   │       ├── backup_rules.xml
│   │   │       └── data_extraction_rules.xml
│   │   └── AndroidManifest.xml
│   ├── build.gradle
│   └── proguard-rules.pro
├── build.gradle
├── settings.gradle
├── gradle.properties
└── README.md
```

## 构建要求

- Android Studio Arctic Fox 或更高版本
- Android SDK 21 或更高版本
- Java 8 或更高版本

## 构建步骤

1. **克隆或下载项目**
   ```bash
   git clone <repository-url>
   cd CalendarApp
   ```

2. **在Android Studio中打开项目**
   - 启动Android Studio
   - 选择 "Open an existing Android Studio project"
   - 选择项目根目录

3. **同步项目**
   - Android Studio会自动同步Gradle文件
   - 如果遇到问题，点击 "Sync Now"

4. **构建应用**
   - 点击菜单 Build → Build Bundle(s) / APK(s) → Build APK(s)
   - 或者使用快捷键 Ctrl+F9 (Windows/Linux) 或 Cmd+F9 (macOS)

5. **运行应用**
   - 连接Android设备或启动模拟器
   - 点击运行按钮（绿色三角形）或使用快捷键 Shift+F10

## 功能说明

### 主界面
- 应用启动后会显示完整的纪念日日历界面
- 支持年份切换（点击左右箭头）
- 显示全年12个月的日历视图

### 纪念日管理
- 添加新的纪念日（名称、日期、分类、颜色、筹备期、备注）
- 查看所有已添加的纪念日列表
- 删除单个纪念日或清除所有纪念日
- 返回今天按钮快速定位到当前日期

### 分类系统
- **传统节日**：春节、中秋节等中国传统节日
- **法定纪念日**：元旦、国庆节等国家法定节日
- **国际纪念日**：国际和平日等世界通行纪念日
- **政治纪念日**：政治性纪念日

### 数据存储
- 所有数据存储在设备的localStorage中
- 完全离线运行，无需网络连接
- 数据安全私密，不会上传到服务器

## 技术实现

- **前端**：HTML5 + CSS3 + JavaScript
- **Android**：WebView组件加载本地HTML
- **数据存储**：localStorage（浏览器本地存储）
- **UI框架**：Font Awesome图标库

## 注意事项

1. 应用需要网络权限以加载外部图标库（Font Awesome）
2. 首次运行时会自动添加一些示例纪念日
3. 所有数据都存储在本地，卸载应用会丢失数据
4. 支持Android 5.0（API 21）及以上版本

## 故障排除

### 常见问题

1. **应用无法启动**
   - 检查Android SDK版本是否正确
   - 确保设备支持WebView

2. **页面显示异常**
   - 检查assets目录中的func.html文件是否存在
   - 确保HTML文件编码为UTF-8

3. **JavaScript功能异常**
   - 检查WebView的JavaScript是否已启用
   - 确保localStorage权限已配置

## 许可证

本项目仅供学习和个人使用。

## 更新日志

### v1.0.0
- 初始版本发布
- 支持基本的纪念日管理功能
- 完整的日历视图
- 离线数据存储 