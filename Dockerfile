# Node.jsのイメージをベースにする
FROM node:16.14.2-alpine3.15

# タイムゾーンの設定
ENV TZ Asia/Tokyo

# ワーキングディレクトリを設定
WORKDIR /usr/src/app

# 依存関係ファイルをコピーする
COPY package*.json ./

# 依存関係をインストールする
RUN npm install

# 残りのファイルをコピーする
COPY . .

# 開発サーバーを起動する
CMD ["npm", "run", "dev"]
