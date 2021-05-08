import os
from flask import Flask

from .app_logger import initialize_logger

# Application Fuctory
def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)

    # 標準設定ファイル読み込み
    app.config.from_object("settings")
    
    # 非公開設定ファイル読み込み
    if app.config["ENV"] == "development":
        app.config.from_pyfile(os.path.join("config", "development.py"), silent=True)
    else:
        app.config.from_pyfile(os.path.join("config", "production.py"), silent=True)

    if test_config is not None:
        # テスト用設定を上書き
        app.config.from_mapping(test_config)

    # viewの読み込み
    from .views.sample_view1 import sample_view1
    app.register_blueprint(sample_view1, url_prefix="/greeting")

    # ロガーを設定
    initialize_logger(app.logger)

    return app

