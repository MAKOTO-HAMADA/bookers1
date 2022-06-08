class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t| # create_table :テーブル名(モデル名の複数型) do |変数|
      
      # このファイル内に「テーブル」の、「カラム」を作る
      t.string :title # t.データ型 :カラム名
      t.string :body  # t.データ型 :カラム名
      
      t.timestamps
    end
  end
end
