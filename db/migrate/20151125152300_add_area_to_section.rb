class AddAreaToSection < ActiveRecord::Migration
  def change
    add_column :sections, :area, :string
  end
end
