# ベースイメージとして公式のOpenJDKイメージを使用
FROM openjdk:17-jdk-slim

# 必要なツールをインストール
RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# SDKMANをインストール
RUN curl -s "https://get.sdkman.io" | bash \
    && bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install java 17.0.8-zulu" \
    && bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install springboot" \
    && bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install gradle"

# 環境変数を設定
ENV PATH="$HOME/.sdkman/candidates/java/current/bin:$HOME/.sdkman/candidates/gradle/current/bin:$HOME/.sdkman/candidates/springboot/current/bin:$PATH"

# 作業ディレクトリを作成
WORKDIR /app
