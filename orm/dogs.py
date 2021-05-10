from sqlalchemy.schema import Column
from sqlalchemy.types import Integer, String
Base = declarative_base()

class OrmDogs(Base):
    """ OrmDogsクラス
    Dogsテーブル用
    """
    
    # テーブル
    __tablename__ = 'dogs'

    # 列定義
    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String(50), nullable=False)
    breed = Column(String(50), nullable=False)

    # テーブルとの対応付け
    def __init__(self, **kwargs):
        self.id = kwargs.get('id')
        self.name = kwargs.get('name')
        self.breed = kwargs.get('breed')
  
    # toString的な関数
    def __repr__(self):
        return f"<OrmDogs(_id='{self.id}', name='{self.name}')>"
