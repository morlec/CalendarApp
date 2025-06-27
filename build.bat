@echo off
echo 开始构建纪念日日历 Android 应用...

REM 检查是否在正确的目录
if not exist "settings.gradle" (
    echo 错误：请在项目根目录运行此脚本
    pause
    exit /b 1
)

REM 检查是否有gradlew文件，如果没有则创建
if not exist "gradlew.bat" (
    echo 正在初始化Gradle Wrapper...
    gradle wrapper
)

REM 清理之前的构建
echo 清理之前的构建...
gradlew.bat clean

REM 构建APK
echo 构建APK...
gradlew.bat assembleDebug

REM 检查构建结果
if %ERRORLEVEL% EQU 0 (
    echo ✅ 构建成功！
    echo APK文件位置: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 您可以将此APK文件安装到Android设备上：
    echo 1. 在Android设备上启用'未知来源'应用安装
    echo 2. 将APK文件传输到设备
    echo 3. 点击APK文件进行安装
) else (
    echo ❌ 构建失败，请检查错误信息
)

pause 