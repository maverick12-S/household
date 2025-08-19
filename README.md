# 💰 Household App - 家計簿管理システム

## 📌 概要

**Household App**は、共働き家庭や個人向けに、**月間の収支を直感的に可視化・管理できる家計簿アプリ**です。ユーザーごとに分離されたデータベース管理と、Keycloakによる安全な認証を組み合わせ、**セキュアかつ拡張性の高い構成**を実現しています。

--

## 🧩 機能一覧

### 🔐 認証・認可

- **KeycloakによるOAuth2 / OpenID Connect対応ログイン**
  - Realm: `household`
  - メールアドレスをキーとして、ユーザーごとの収支データを分離管理
- **JWTトークンによるAPI認可制御**

### 🗃️ バックエンド機能

- **収支データ（Transactions）のCRUD操作**
- **通知予約データ（notification_reservations）のバッチ処理**
  - メール送信用設定にサンドボックス利用可（`spring.mail.*`）
※サンドボックスを用意する必要があり。
-spring.mail.host=<sandboxのhost名>
-spring.mail.username=<sandboxのusername>
-spring.mail.password=<sandboxのpassword>

### 🖥️ フロントエンド機能

- **Home画面**：収支の登録・更新・削除（初期表示で既存データを取得）
- **Report画面**：月間収支・内訳グラフ、月単位での一括削除
- **ユーザー操作**：ログアウト、Keycloak管理画面への遷移（パスワード等変更）

---

## 🏗️ アーキテクチャ構成

Frontend (React) ----> Backend (Spring Boot) ----> PostgreSQL
| |
└──────────── Keycloak ──────────────┘

- **フロントエンド**: React (TypeScript), keycloak-js, Axios
- **バックエンド**: Spring Boot (Java), Spring Security, JPA
- **認証サーバ**: Keycloak (Docker上, Port 8180)
- **DB**: PostgreSQL (Docker上, Port 5432)

---

## 🚀 起動方法

1. **リポジトリをクローン**

```bash
git clone https://github.com/yourname/household-app.git
cd household-app

【Dockerで構築されるサービス】

PostgreSQL

Keycloak

Backend (Spring Boot)

Frontend (React)

【起動コマンド】

docker-compose up --build


【アクセス先】

フロントエンド: http://localhost:3000

バックエンド: http://localhost:8080

Keycloak管理画面: http://localhost:8180


---
🔑 デモ用認証情報

【Keycloak：管理者】

ユーザー名: admin

パスワード: admin

【アプリユーザー】（realm-export.json に事前登録済）

ユーザー名: test

パスワード: test

---


📊 技術スタック

Frontend: React, TypeScript, Axios, keycloak-js

Backend: Spring Boot, Java, Spring Security, JPA

Auth: Keycloak

Database: PostgreSQL

Containerization: Docker, Docker Compose

