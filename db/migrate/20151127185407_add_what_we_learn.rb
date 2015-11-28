class AddWhatWeLearn < ActiveRecord::Migration
  def change
    add_column :articles, :what_we_learn, :text, :array => true, :default => [], :null => false
  end
end
