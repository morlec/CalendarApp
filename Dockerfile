FROM openjdk:17-jdk

# 安装必要的工具
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 复制项目文件
COPY . .

# 下载Android SDK
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O cmdline-tools.zip
RUN unzip cmdline-tools.zip -d /opt/android-sdk
RUN mkdir -p /opt/android-sdk/cmdline-tools/latest
RUN mv /opt/android-sdk/cmdline-tools/* /opt/android-sdk/cmdline-tools/latest/ 2>/dev/null || true

# 设置环境变量
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools

# 接受Android SDK许可证
RUN yes | sdkmanager --licenses

# 安装必要的SDK组件
RUN sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

# 下载Gradle
RUN wget -q https://services.gradle.org/distributions/gradle-8.4-bin.zip -O gradle.zip
RUN unzip gradle.zip -d /opt
ENV PATH=$PATH:/opt/gradle-8.4/bin

# 创建Gradle Wrapper
RUN gradle wrapper

# 构建APK
RUN ./gradlew assembleDebug

# 创建输出目录
RUN mkdir -p /output
RUN cp app/build/outputs/apk/debug/app-debug.apk /output/

# 设置输出卷
VOLUME /output

CMD ["echo", "APK构建完成，文件位于/output/app-debug.apk"] 