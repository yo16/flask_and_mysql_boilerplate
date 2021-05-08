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


## Dockerイメージ作成
- 


# MySQL
- mysql:8.0.24

# ORM
- SQLAlchemy
