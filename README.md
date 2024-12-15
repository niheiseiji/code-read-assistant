# Code Reading Assistant 開発環境

このリポジトリは、Spring Boot を使用したバックエンド API と PostgreSQL データベースを Docker を利用して構築する開発環境を提供します。

## 環境概要

### 構成
- **バックエンド API**: Spring Boot
- **データベース**: PostgreSQL
- **コンテナ管理**: Docker Compose
- **開発環境**: Visual Studio Code + Dev Containers

---

## 環境構築手順

### 1. 前提条件
以下のソフトウェアがインストールされていることを確認してください。

- **Docker**: https://www.docker.com/get-started  
- **Visual Studio Code (VSCode)**: https://code.visualstudio.com/  
- **VSCode Extensions**:
  - **Dev Containers**: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

---

### 2. リポジトリのクローン

ターミナルで以下のコマンドを実行してリポジトリをクローンします。
```
git clone https://github.com/niheiseiji/code-read-assistant.git cd code-read-assistant
```

---

### 3. Docker コンテナの起動

`docker-compose.yml` を利用してコンテナを起動します。
```
docker-compose up -d
```

これにより、以下の2つのコンテナが作成されます。

- **code-assistant-api**: Spring Boot アプリケーション
- **local-dev-db**: PostgreSQL データベース

起動後、以下のURLでアプリケーションにアクセスできます。

- **API エンドポイント**: http://localhost:8080

---

### 4. Dev Containers の利用 (オプション)

1. VSCode でプロジェクトを開きます。
2. コマンドパレット（`Ctrl+Shift+P`）を開き、「Reopen in Container」を選択します。
3. コンテナ環境が起動し、VSCode 内で開発を開始できます。

---

### 5. 確認用エンドポイント

以下のエンドポイントを使用して動作確認ができます。

- **`GET /hello`**
  - レスポンス例: `"Hello, World!"`

- **`GET /ping`**
  - レスポンス例: `"pong"`

---

### 6. 便利なスクリプト

プロジェクトにはセットアップ用スクリプトが含まれています。

#### setup_docker.sh
このスクリプトを実行すると、Docker と Docker Compose がインストールされていることを確認し、`docker-compose.yml` を使って環境をセットアップします。
```
bash setup_docker.sh
```
