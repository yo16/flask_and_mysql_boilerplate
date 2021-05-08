""" 設定ファイル

- 一般的な設定ファイル。
- 非公開情報（パスワードやAPIキー）を除く。
    - それはinstanceフォルダ内で。
- 正式版/デバッグ版など、インスタンスごとに異なる設定を除く。
    - それはinstanceフォルダ内で。

使用方法
app.config["SOME_SETTING"] で読む。（上書きしない。）

このコードを読んでいるソース
- ./app/__init__.py  app.config.from_object("settings")
"""

class settings(object):
    # 実行環境
    # ENV = 'production'
    ENV = 'development'

    SOME_SETTING = 'aaaa'
