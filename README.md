# flask_and_mysql_boilerplate
FlaskとMySQLをDocker Containerで使うときのボイラープレート

# HTMLサーバー
- tiangolo/uwsgi-nginx-flask:python3.8
  - https://github.com/tiangolo/uwsgi-nginx-flask-docker
- Python 3.8.8
- Flask 1.1.2

## デバッグ用にローカルでFlaskサーバーを立てるとき
- 環境変数を設定
  - FLASK_APP: app
  - FLASK_ENV: development
- `python main.py` からの `http://localhost:5000/greeting/Good Evening?user_name=yo16`
  - `Good Evening yo16!!` と表示される


## Docker
- イメージビルド
    ```
    docker build -t flask_and_mysql . --no-cache=true
    ```
- テスト起動
    ```
    docker run -p 5000:80 --name flask_and_mysql_container flask_and_mysql
    ```
- テスト起動しつつ、環境確認のためなどにbashで入る
    ```
    docker run -it -p 5000:80 --name flask_and_mysql_container flask_and_mysql /bin/bash
    ```
- 起動している環境に入る
    ```
    docker exec -it flask_and_mysql_container /bin/bash
    ```

## docker-container
- イメージビルド
    ```
    docker build -t flask_and_mysql . --no-cache=true
    ```
- 起動
    ```
    docker-compose up
    ```
- 起動している環境に入る
    ```
    docker exec -it flask_and_mysql_boilerplate_html_server_1 /bin/bash
    ```


# MySQL
- mysql:8.0.24

# ORM
- SQLAlchemy
