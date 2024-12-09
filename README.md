# README

## アプリケーション名	
Q-Bridge
## アプリケーション概要
社内でのQ＆A
## URL
URL：https://q-bridge.onrender.com
## テスト用アカウント
・Basic認証ID：ozone

・Basic認証パスワード：0629

・メールアドレス：123@123

・パスワード：ozone0629
## 利用方法
### 質問投稿
1.ヘッダーからユーザー新規登録を行う

2.新規質問投稿ボタンから、質問の内容を入力し投稿する
### 質問に対する回答
1.質問一覧から、該当の質問を選び質問詳細画面へ遷移する

2.質問詳細画面にある回答入力フォームから回答を入力し、回答ボタンを押す

## アプリケーションを作成した背景
私自身の経験で、「業務に関する不明点を質問しにくい」という課題があった。課題を分析した結果、「担当者がわからない」「質問をする時間がない」ということが真因であると仮説を立てた。同様の問題を抱えている方も多いと推測し、真因を解決するために、社内でのQ&Aアプリを開発することにした。

## 実装予定の機能
・質問に対して、回答が得られたら通知が来る機能

## データベース設計
<a href="https://gyazo.com/f667e1aaeaf7975ca1e543a04bae68ad"><img src="https://i.gyazo.com/f667e1aaeaf7975ca1e543a04bae68ad.png" alt="Image from Gyazo" width="726"/></a>

## 画面遷移図
<a href="https://gyazo.com/dcd97a0370200c287e6ce386932a582f"><img src="https://i.gyazo.com/dcd97a0370200c287e6ce386932a582f.png" alt="Image from Gyazo" width="596"/></a>

## 開発環境
###　言語
・Ruby
### 
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理
## ローカルでの動作方法
% git clone https://github.com/0zone-k/Q-Bridge
% cd Q-Bridge
% bundle install
% rails DB:create
% rails DB:migrate
## 工夫したポイント
・質問先を部署ごとにすることで、担当部署の誰でも回答できるようにし素早く問題解決へ繋がるようにした点

## 制作時間
約2週間