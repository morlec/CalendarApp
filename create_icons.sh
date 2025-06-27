#!/bin/bash

echo "🎨 创建应用图标..."

# 创建简单的SVG图标
cat > icon.svg << 'EOF'
<svg width="108" height="108" viewBox="0 0 108 108" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#4361ee;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#3f37c9;stop-opacity:1" />
    </linearGradient>
  </defs>
  
  <!-- 背景圆形 -->
  <circle cx="54" cy="54" r="50" fill="url(#grad1)" stroke="#ffffff" stroke-width="2"/>
  
  <!-- 日历图标 -->
  <rect x="25" y="35" width="58" height="38" rx="3" fill="#ffffff" opacity="0.9"/>
  <rect x="25" y="35" width="58" height="8" rx="3" fill="#f72585"/>
  
  <!-- 日期数字 -->
  <text x="54" y="58" font-family="Arial, sans-serif" font-size="16" font-weight="bold" text-anchor="middle" fill="#333">25</text>
  
  <!-- 装饰星星 -->
  <polygon points="54,15 56,20 61,20 57,24 59,29 54,26 49,29 51,24 47,20 52,20" fill="#f8961e"/>
</svg>
EOF

echo "✅ SVG图标已创建"

# 检查是否有ImageMagick来生成PNG图标
if command -v convert &> /dev/null; then
    echo "🖼️  使用ImageMagick生成PNG图标..."
    
    # 生成不同尺寸的图标
    convert icon.svg -resize 72x72 app/src/main/res/mipmap-hdpi/ic_launcher.png
    convert icon.svg -resize 48x48 app/src/main/res/mipmap-mdpi/ic_launcher.png
    convert icon.svg -resize 96x96 app/src/main/res/mipmap-xhdpi/ic_launcher.png
    convert icon.svg -resize 144x144 app/src/main/res/mipmap-xxhdpi/ic_launcher.png
    convert icon.svg -resize 192x192 app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
    
    # 生成圆形图标
    convert icon.svg -resize 72x72 -background transparent -gravity center -extent 72x72 -alpha set -channel A -evaluate set 100% app/src/main/res/mipmap-hdpi/ic_launcher_round.png
    convert icon.svg -resize 48x48 -background transparent -gravity center -extent 48x48 -alpha set -channel A -evaluate set 100% app/src/main/res/mipmap-mdpi/ic_launcher_round.png
    convert icon.svg -resize 96x96 -background transparent -gravity center -extent 96x96 -alpha set -channel A -evaluate set 100% app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
    convert icon.svg -resize 144x144 -background transparent -gravity center -extent 144x144 -alpha set -channel A -evaluate set 100% app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
    convert icon.svg -resize 192x192 -background transparent -gravity center -extent 192x192 -alpha set -channel A -evaluate set 100% app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png
    
    echo "✅ PNG图标已生成"
else
    echo "⚠️  ImageMagick未安装，跳过PNG图标生成"
    echo "   您可以手动将icon.svg转换为PNG格式"
fi

echo "🎉 图标创建完成！" 