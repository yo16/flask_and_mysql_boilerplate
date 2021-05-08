FROM tiangolo/uwsgi-nginx-flask:python3.8
# https://github.com/tiangolo/uwsgi-nginx-flask-docker

# container側の作業フォルダを定義
WORKDIR /app

# requirements.txtをコピーしてpipインストール
COPY ./html_server/requirements.txt /app/
RUN python -m pip install --upgrade pip && pip3 install --no-cache-dir -r requirements.txt

# htmlサーバー をコピー
COPY ./html_server /app/html_server

# ORMオブジェクト をコピー
COPY ./orm /app/orm

# tiangolo/uwsgi-nginx-flask:python3.8 で起動時に
# /app/uwsgi.ini を読んで、moduleを探して、callableのappを使って app.create_app() が呼ばれる（たぶん）
COPY ./html_server/server_settings/uwsgi.ini /app/

# staticフォルダを指定しないといけない
ENV STATIC_PATH /app/html_server/app/static

# ポートの穴を開ける
EXPOSE 80
