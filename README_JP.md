# Meeting Timer (ミーティングタイマー)

Web会議に遅れないための、シンプルでエレガントなタイマーアプリケーションです。

## 特徴

- **クイックタイマー**: 1クリックで5分または10分のカウントダウンを開始
- **カスタムタイマー**: 任意の時間を分単位で設定可能
- **ミーティングアラーム**: 会議開始時間の5分前にアラームを鳴らす設定
- **一時停止/再開**: 必要に応じてタイマーを一時停止・再開
- **視覚・音声アラート**: 終了時に画面の点滅とビープ音でお知らせ
- **コンパクトモード**: カウントダウン中はウィンドウが自動的に縮小し、作業の邪魔になりません

## 対応プラットフォーム

- **macOS**: グラスモーフィズムデザインを採用したネイティブデスクトップアプリ
- **Android**: スマートフォンに最適化されたモバイルアプリ

## インストール方法

### macOS

1. リリースから `Meeting Timer-1.0.0-arm64.dmg` をダウンロードします
2. DMGファイルを開きます
3. アプリケーションを「Applications」フォルダにドラッグ＆ドロップします
4. 初回起動時は（未署名アプリのため）右クリックして「開く」を選択してください

### Android

1. リリースから `meeting_timer_mobile.apk` をダウンロードします
2. Androidの設定で「不明なソースからのインストール」を許可します
3. APKファイルをインストールします

## 使い方

### クイックタイマー

- 「5 Min」または「10 Min」をクリックしてカウントダウンを開始します
- ウィンドウがコンパクトモードになり、タイマーと操作ボタンのみが表示されます

### カスタムタイマー

- 入力フィールドに分数を入力します
- 「Start Custom Timer」をクリックします

### ミーティングアラーム

- 会議の開始時間を入力します（デフォルトは現在時刻）
- 「Set Pre Alarm」をクリックします
- 会議開始の5分前にアラームが作動します

### 操作

- **Pause**: 現在のタイマーを一時停止します
- **Resume**: 一時停止中のタイマーを再開します
- **Stop/Reset**: タイマーを停止し、デフォルト表示に戻します

## 開発者向け情報

### macOS版

Electronで構築されています。

```bash
cd meeting-timer
npm install
npm start  # 開発モード
npm run build  # DMGのビルド
```

### Android版

Capacitorで構築されています。

```bash
cd meeting-timer-mobile
npm install
npx cap sync
npx cap open android  # Android Studioで開く
```

## 使用技術

- **Frontend**: HTML, CSS, JavaScript
- **macOS**: Electron
- **Android**: Capacitor
- **Audio**: Web Audio API
- **Notifications**: ネイティブ通知API

## ライセンス

MIT License
