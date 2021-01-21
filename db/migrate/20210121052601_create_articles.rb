class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :title,   null: false
      t.text :text,    null: false
      t.integer :category, null: false
      t.timestamps
    end
  end
end
