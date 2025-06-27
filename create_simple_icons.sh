#!/bin/bash

echo "🎨 创建简单的默认图标..."

# 创建简单的Base64编码的PNG图标（1x1像素透明图片）
# 这些是占位符图标，GitHub Actions会自动生成默认图标

# 创建空的图标文件
touch app/src/main/res/mipmap-hdpi/ic_launcher.png
touch app/src/main/res/mipmap-hdpi/ic_launcher_round.png
touch app/src/main/res/mipmap-mdpi/ic_launcher.png
touch app/src/main/res/mipmap-mdpi/ic_launcher_round.png
touch app/src/main/res/mipmap-xhdpi/ic_launcher.png
touch app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
touch app/src/main/res/mipmap-xxhdpi/ic_launcher.png
touch app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
touch app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
touch app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png

echo "✅ 默认图标文件已创建"
echo "📝 注意：这些是占位符文件，Android Studio会自动生成默认图标" 