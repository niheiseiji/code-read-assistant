#!/bin/bash

echo "=== Docker環境のセットアップを開始します ==="

# Dockerのインストール確認
if ! command -v docker &> /dev/null; then
  echo "エラー: Dockerがインストールされていません。手動でインストールしてください。"
  exit 1
else
  echo "Dockerは既にインストールされています。"
fi

# Docker Composeのインストール確認
if ! command -v docker-compose &> /dev/null; then
  echo "エラー: Docker Composeがインストールされていません。手動でインストールしてください。"
  exit 1
else
  echo "Docker Composeは既にインストールされています。"
fi

# docker-compose.ymlの検証
if [ ! -f docker-compose.yml ]; then
  echo "docker-compose.yml が見つかりません。手動で作成してください。"
  exit 1
fi

# Docker Composeを使用してコンテナを起動
echo "コンテナを起動中..."
docker-compose up -d

echo "=== Docker環境のセットアップが完了しました ==="
