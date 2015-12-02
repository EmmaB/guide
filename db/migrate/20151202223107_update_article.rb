class UpdateArticle < ActiveRecord::Migration
  def change
    add_column :articles, :sequence, :integer
    Article.all.order(:created_at).each_with_index do |s, i|
      s.update_column(:sequence, (i + 1) * 10)
    end
  end
end
