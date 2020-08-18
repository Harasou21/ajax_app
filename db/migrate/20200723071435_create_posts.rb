class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.boolean :checked
      # booleanはtrueかfalseか判断する型です
      #これで既読未読とかの非同期処理ができるらしい
      t.timestamps
    end
  end
end
