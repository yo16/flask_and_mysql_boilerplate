# flask_and_mysql_boilerplate
FlaskとMySQLをDocker Containerで使うときのボイラープレート

# HTMLサーバー
- tiangolo/uwsgi-nginx-flask:python3.8
  - https://github.com/tiangolo/uwsgi-nginx-flask-docker
- Python 3.8.8
- Flask 1.1.2

## デバッグ用にローカルでFlaskサーバーを立てるとき
- `python main.py` からの `http://localhost:5000/greeting/GoodEvening?user_name=yo16`


## Dockerイメージ作成
- 


# MySQL
- mysql:8.0.24

# ORM
- SQLAlchemy
