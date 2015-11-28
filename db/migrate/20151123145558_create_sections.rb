class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :user_id
      t.text :name
      t.text :description
      t.integer :section_id

      t.timestamps
    end
  end
end
