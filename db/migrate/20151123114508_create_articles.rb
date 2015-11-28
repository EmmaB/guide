class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :section_id
      t.text :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
